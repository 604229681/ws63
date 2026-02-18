#ifndef AUDIOWEBSOCKET_H
#define AUDIOWEBSOCKET_H

#include <stdint.h>
#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

/**
 * @brief Initialize WebSocket connection
 * 
 * Establishes a WebSocket connection to the configured server (WS_HOST:WS_PORT)
 * 
 * @return 0 on success, -1 on failure
 */
int audio_websocket_init(void);

/**
 * @brief Send data over WebSocket
 * 
 * Sends binary data over the established WebSocket connection
 * 
 * @param data Pointer to data buffer to send
 * @param len Length of data in bytes
 * @return Number of bytes sent on success, -1 on failure
 */
int audio_websocket_send(const uint8_t *data, size_t len);

/**
 * @brief WebSocket Receive Callback
 * 
 * Called when binary data is received from the server
 */
typedef void (*websocket_rx_callback_t)(const uint8_t *data, size_t len);

/**
 * @brief Set RX Callback
 * 
 * Register a callback to be called when data is received
 */
void audio_websocket_set_rx_callback(websocket_rx_callback_t callback);

/**
 * @brief Close WebSocket connection
 * 
 * Closes the WebSocket connection and frees resources
 * 
 * @return 0 on success, -1 on failure
 */
int audio_websocket_close(void);

#ifdef __cplusplus
}
#endif

#endif // AUDIOWEBSOCKET_H
