#ifndef WLAN_HOTSPOT_H
#define WLAN_HOTSPOT_H

#ifdef __cplusplus
extern "C" {
#endif

/**
 * @brief Connect to WiFi hotspot and wait for connection
 * 
 * Connects to the configured WiFi hotspot (testap) and blocks until
 * connection is successful or timeout occurs.
 * 
 * @return 0 on success, -1 on failure
 */
int wifi_connect_to_hotspot(void);

#ifdef __cplusplus
}
#endif

#endif // WLAN_HOTSPOT_H
