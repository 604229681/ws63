#include "audiowebsocket.h"
#include "osal_debug.h"
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include "lwip/sockets.h"
#include "lwip/netdb.h"

// TODO: Change this to your WebSocket server's IP address on the WiFi network
// Example: If your computer running the server has IP 192.168.1.100, use that
#define WS_HOST "192.168.43.5" // TODO: CHANGE THIS TO YOUR SERVER'S IP ADDRESS
#define WS_PORT 8000
#define WS_PATH "/"

// WebSocket opcodes
#define WS_OPCODE_TEXT 0x01
#define WS_OPCODE_BINARY 0x02
#define WS_OPCODE_CLOSE 0x08
#define WS_OPCODE_PING 0x09
#define WS_OPCODE_PONG 0x0A

// WebSocket flags
#define WS_FIN 0x80
#define WS_MASK 0x80

static int ws_socket = -1;

/**
 * @brief Manual htons implementation for embedded systems
 */
static uint16_t ws_htons(uint16_t hostshort)
{
#if __BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__
    return ((hostshort & 0xFF) << 8) | ((hostshort >> 8) & 0xFF);
#else
    return hostshort;
#endif
}

/**
 * @brief Generate random masking key for WebSocket frames
 */
static void generate_mask_key(uint8_t *mask)
{
    static int seeded = 0;
    if (!seeded) {
        srand(time(NULL));
        seeded = 1;
    }
    for (int i = 0; i < 4; i++) {
        mask[i] = rand() & 0xFF;
    }
}

/**
 * @brief Perform WebSocket handshake
 */
static int websocket_handshake(int sockfd)
{
    char request[512];
    char response[1024];

    // Build WebSocket handshake request
    snprintf(request, sizeof(request),
             "GET %s HTTP/1.1\r\n"
             "Host: %s:%d\r\n"
             "Upgrade: websocket\r\n"
             "Connection: Upgrade\r\n"
             "Sec-WebSocket-Key: dGhlIHNhbXBsZSBub25jZQ==\r\n"
             "Sec-WebSocket-Version: 13\r\n"
             "\r\n",
             WS_PATH, WS_HOST, WS_PORT);

    // Send handshake request
    if (send(sockfd, request, strlen(request), 0) < 0) {
        osal_printk("[WS] Failed to send handshake\r\n");
        return -1;
    }

    // Receive handshake response
    int bytes_received = recv(sockfd, response, sizeof(response) - 1, 0);
    if (bytes_received < 0) {
        osal_printk("[WS] Failed to receive handshake response\r\n");
        return -1;
    }
    response[bytes_received] = '\0';

    // Check for successful handshake (HTTP 101 Switching Protocols)
    if (strstr(response, "101") == NULL) {
        osal_printk("[WS] Handshake failed - no 101 response\r\n");
        return -1;
    }

    osal_printk("[WS] Handshake successful\r\n");
    return 0;
}

static websocket_rx_callback_t g_rx_callback = NULL;

void audio_websocket_set_rx_callback(websocket_rx_callback_t callback)
{
    g_rx_callback = callback;
}

// Helper to read exact number of bytes
static int recv_exact(int s, uint8_t *buf, size_t len)
{
    size_t total = 0;
    while (total < len) {
        int r = recv(s, buf + total, len - total, 0);
        if (r <= 0)
            return r; // Error or Closed
        total += r;
    }
    return total;
}

static void send_pong(int s, const uint8_t *data, size_t len)
{
    // PONG frame: FIN=1, OpCode=0xA, Masked=1
    // For simplicity, we send unmasked PONG (Server should accept it, or we mask it)
    // RFC 6455 says Client MUST mask frames. So we must mask.

    size_t frame_size = 2 + 4 + len; // Max len for control frame is 125 bytes
    uint8_t *frame = malloc(frame_size);
    if (!frame)
        return;

    frame[0] = WS_FIN | WS_OPCODE_PONG;
    frame[1] = WS_MASK | (uint8_t)len;

    uint8_t mask_key[4];
    generate_mask_key(mask_key);
    memcpy(frame + 2, mask_key, 4);

    for (size_t i = 0; i < len; i++) {
        frame[6 + i] = data[i] ^ mask_key[i % 4];
    }

    send(s, frame, frame_size, 0);
    free(frame);
    osal_printk("[WS] Sent PONG\r\n");
}

static void *ws_recv_task(const char *arg)
{
    (void)arg;

    osal_printk("[WS RX] Task Started. ws_socket=%d\r\n", ws_socket);

    uint8_t header[2];
    uint8_t *payload_buf = NULL;
    size_t payload_buf_len = 0;

    while (ws_socket >= 0) {
        // 1. Read Frame Header (2 bytes)
        int r = recv_exact(ws_socket, header, 2);
        if (r <= 0) {
            if (r == 0)
                osal_printk("[WS] Server closed connection\r\n");
            else
                osal_printk("[WS] Recv error: %d\r\n", r);
            break;
        }

        uint8_t fin = (header[0] & WS_FIN) >> 7;
        (void)fin; // Suppress unused variable warning
        uint8_t opcode = header[0] & 0x0F;
        uint8_t masked = (header[1] & WS_MASK) >> 7;
        uint64_t payload_len = header[1] & 0x7F;

        // 2. Parse Extended Length
        if (payload_len == 126) {
            uint8_t ext[2];
            if (recv_exact(ws_socket, ext, 2) <= 0)
                break;
            payload_len = (ext[0] << 8) | ext[1];
        } else if (payload_len == 127) {
            uint8_t ext[8];
            if (recv_exact(ws_socket, ext, 8) <= 0)
                break;
            // We only support up to 32-bit length for embedded
            payload_len = ((uint64_t)ext[0] << 56) | ((uint64_t)ext[1] << 48) | ((uint64_t)ext[2] << 40) |
                          ((uint64_t)ext[3] << 32) | ((uint64_t)ext[4] << 24) | ((uint64_t)ext[5] << 16) |
                          ((uint64_t)ext[6] << 8) | ext[7];
        }

        // 3. Read Mask Key (if server sends masked data - unlikely but possible)
        uint8_t mask_key[4] = {0};
        if (masked) {
            if (recv_exact(ws_socket, mask_key, 4) <= 0)
                break;
        }

        // 4. Read Payload
        if (payload_len > 0) {
            // Realloc buffer if needed
            if (payload_len > payload_buf_len) {
                free(payload_buf);
                payload_buf = malloc(payload_len);
                payload_buf_len = payload_len;
                if (!payload_buf) {
                    osal_printk("[WS] OOM! Cannot alloc %llu bytes\r\n", payload_len);
                    break;
                }
            }

            if (recv_exact(ws_socket, payload_buf, (size_t)payload_len) <= 0)
                break;

            // Unmask if needed
            if (masked) {
                for (size_t i = 0; i < payload_len; i++) {
                    payload_buf[i] ^= mask_key[i % 4];
                }
            }
        }

        // 5. Handle OpCode
        switch (opcode) {
            case WS_OPCODE_PING:
                osal_printk("[WS] Received PING\r\n");
                send_pong(ws_socket, payload_buf, (size_t)payload_len);
                break;

            case WS_OPCODE_CLOSE:
                osal_printk("[WS] Received CLOSE\r\n");
                goto exit_task; // Break out to cleanup

            case WS_OPCODE_BINARY:
                if (g_rx_callback && payload_len > 0) {
                    g_rx_callback(payload_buf, (size_t)payload_len);
                }
                break;

            case WS_OPCODE_TEXT:
                // Ignore text or log it
                // if (payload_len > 0) osal_printk("[WS] Text: %.*s\r\n", (int)payload_len, payload_buf);
                break;

            case WS_OPCODE_PONG:
                osal_printk("[WS] Received PONG\r\n");
                break;

            default:
                // osal_printk("[WS] Unknown OpCode: 0x%02x\r\n", opcode);
                break;
        }
    }

exit_task:
    osal_printk("[WS RX] Task Exit\r\n");
    if (payload_buf)
        free(payload_buf);

    if (ws_socket >= 0) {
        osal_printk("[WS] Cleaning up socket\r\n");
        // Don't use audio_websocket_close() here to avoid recursive task issues?
        // Actually audio_websocket_close sends a CLOSE frame. If we received CLOSE, we should just close.
        lwip_close(ws_socket);
        ws_socket = -1;
    }
    return NULL;
}

int audio_websocket_init(void)
{
    struct sockaddr_in server_addr;

    // Create socket
    ws_socket = socket(AF_INET, SOCK_STREAM, 0);
    if (ws_socket < 0) {
        osal_printk("[WS] Failed to create socket\r\n");
        return -1;
    }

    // Configure server address
    memset(&server_addr, 0, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = ws_htons(WS_PORT);
    server_addr.sin_addr.s_addr = inet_addr(WS_HOST);

    if (server_addr.sin_addr.s_addr == INADDR_NONE) {
        osal_printk("[WS] Invalid address\r\n");
        lwip_close(ws_socket);
        ws_socket = -1;
        return -1;
    }

    // Connect to server
    if (connect(ws_socket, (struct sockaddr *)&server_addr, sizeof(server_addr)) < 0) {
        osal_printk("[WS] Failed to connect to %s:%d\r\n", WS_HOST, WS_PORT);
        lwip_close(ws_socket);
        ws_socket = -1;
        return -1;
    }

    osal_printk("[WS] Connected to %s:%d\r\n", WS_HOST, WS_PORT);

    // Perform WebSocket handshake
    if (websocket_handshake(ws_socket) < 0) {
        lwip_close(ws_socket);
        ws_socket = -1;
        return -1;
    }

    // Start RX Thread
    osal_task *task_handle = NULL;
    task_handle = osal_kthread_create((osal_kthread_handler)ws_recv_task, 0, "WsRxTask", 0x2000);
    if (task_handle == NULL) {
        osal_printk("[WS] Failed to create RX task\r\n");
    }

    return 0;
}

int audio_websocket_send(const uint8_t *data, size_t len)
{
    if (ws_socket < 0) {
        osal_printk("[WS] Not initialized\r\n");
        return -1;
    }

    if (data == NULL || len == 0) {
        osal_printk("[WS] Invalid data or length\r\n");
        return -1;
    }

    // Calculate frame size
    size_t frame_size = 2; // Basic header
    uint8_t mask_key[4];

    // Extended payload length
    if (len <= 125) {
        frame_size += 0;
    } else if (len <= 65535) {
        frame_size += 2;
    } else {
        frame_size += 8;
    }

    frame_size += 4;   // Masking key
    frame_size += len; // Payload

    // Allocate frame buffer
    uint8_t *frame = (uint8_t *)malloc(frame_size);
    if (frame == NULL) {
        osal_printk("[WS] Failed to allocate frame buffer\r\n");
        return -1;
    }

    size_t offset = 0;

    // Set FIN bit and opcode (binary)
    frame[offset++] = WS_FIN | WS_OPCODE_BINARY;

    // Set MASK bit and payload length
    if (len <= 125) {
        frame[offset++] = WS_MASK | (uint8_t)len;
    } else if (len <= 65535) {
        frame[offset++] = WS_MASK | 126;
        frame[offset++] = (len >> 8) & 0xFF;
        frame[offset++] = len & 0xFF;
    } else {
        frame[offset++] = WS_MASK | 127;
        for (int i = 7; i >= 0; i--) {
            frame[offset++] = (len >> (i * 8)) & 0xFF;
        }
    }

    // Generate and set masking key
    generate_mask_key(mask_key);
    memcpy(frame + offset, mask_key, 4);
    offset += 4;

    // Mask and copy payload
    for (size_t i = 0; i < len; i++) {
        frame[offset++] = data[i] ^ mask_key[i % 4];
    }

    // Send frame
    ssize_t sent = send(ws_socket, frame, frame_size, 0);
    free(frame);

    if (sent < 0) {
        osal_printk("[WS] Send failed\r\n");
        return -1;
    }

    return len;
}

int audio_websocket_close(void)
{
    if (ws_socket < 0) {
        osal_printk("[WS] Not initialized\r\n");
        return -1;
    }

    // Send close frame
    uint8_t close_frame[6];
    uint8_t mask_key[4];

    close_frame[0] = WS_FIN | WS_OPCODE_CLOSE;
    close_frame[1] = WS_MASK | 0; // No payload

    generate_mask_key(mask_key);
    memcpy(close_frame + 2, mask_key, 4);

    send(ws_socket, close_frame, 6, 0);

    // Close socket
    lwip_close(ws_socket);
    ws_socket = -1;

    osal_printk("[WS] Connection closed\r\n");
    return 0;
}
