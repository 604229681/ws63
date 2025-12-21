#include "audiowebsocket.h"
#include "osal_debug.h"
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include "lwip/sockets.h"
#include "lwip/netdb.h"

// TODO: Change this to your WebSocket server's IP address on the WiFi network
// Example: If your computer running the server has IP 192.168.1.100, use that
#define WS_HOST "192.168.43.5"  // CHANGE THIS TO YOUR SERVER'S IP ADDRESS
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
static uint16_t ws_htons(uint16_t hostshort) {
#if __BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__
    return ((hostshort & 0xFF) << 8) | ((hostshort >> 8) & 0xFF);
#else
    return hostshort;
#endif
}

/**
 * @brief Generate random masking key for WebSocket frames
 */
static void generate_mask_key(uint8_t *mask) {
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
static int websocket_handshake(int sockfd) {
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

int audio_websocket_init(void) {
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
    
    return 0;
}

int audio_websocket_send(const uint8_t *data, size_t len) {
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
    
    frame_size += 4; // Masking key
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

int audio_websocket_close(void) {
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
