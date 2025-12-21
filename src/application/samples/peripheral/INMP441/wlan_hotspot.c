#include "wlan_hotspot.h"
#include "wifi_hotspot.h"
#include "wifi_hotspot_config.h"
#include "lwip/netifapi.h"
#include "td_base.h"
#include "td_type.h"
#include "osal_debug.h"
#include "soc_osal.h"
#include <string.h>

#define WIFI_SSID "testap"
#define WIFI_PASSWORD "123456789"
#define WIFI_IFNAME_MAX_SIZE 16
#define WIFI_MAX_SSID_LEN 33
#define WIFI_SCAN_AP_LIMIT 64
#define WIFI_MAC_LEN 6
#define WIFI_GET_IP_MAX_COUNT 300

static volatile int g_wifi_connected = 0;

enum {
    WIFI_STATE_INIT = 0,
    WIFI_STATE_SCANNING,
    WIFI_STATE_SCAN_DONE,
    WIFI_STATE_FOUND_TARGET,
    WIFI_STATE_CONNECTING,
    WIFI_STATE_CONNECT_DONE,
    WIFI_STATE_GET_IP,
};

static td_u8 g_wifi_state = WIFI_STATE_INIT;

/**
 * @brief WiFi scan event callback
 */
static td_void wifi_scan_callback(td_s32 state, td_s32 size)
{
    (void)state;
    (void)size;
    osal_printk("[WiFi] Scan done!\r\n");
    g_wifi_state = WIFI_STATE_SCAN_DONE;
}

/**
 * @brief WiFi connection event callback
 */
static td_void wifi_connection_callback(td_s32 state, const wifi_linked_info_stru *info, td_s32 reason_code)
{
    (void)info;
    (void)reason_code;

    if (state == 0) {  // Not available
        osal_printk("[WiFi] Connect fail! Try again\r\n");
        g_wifi_state = WIFI_STATE_INIT;
        g_wifi_connected = 0;
    } else {
        osal_printk("[WiFi] Connect success!\r\n");
        g_wifi_state = WIFI_STATE_CONNECT_DONE;
    }
}

/**
 * @brief Find target AP in scan results
 */
static td_s32 get_match_network(wifi_sta_config_stru *config)
{
    td_s32 ret;
    td_u32 num = WIFI_SCAN_AP_LIMIT;
    td_bool found = TD_FALSE;
    td_u8 i;

    // Allocate buffer for scan results
    td_u32 scan_len = sizeof(wifi_scan_info_stru) * WIFI_SCAN_AP_LIMIT;
    wifi_scan_info_stru *result = osal_kmalloc(scan_len, OSAL_GFP_ATOMIC);
    if (result == TD_NULL) {
        return -1;
    }

    memset_s(result, scan_len, 0, scan_len);
    ret = wifi_sta_get_scan_info(result, &num);
    if (ret != 0) {
        osal_kfree(result);
        return -1;
    }

    // Find our SSID in scan results
    for (i = 0; i < num; i++) {
        if (strlen(WIFI_SSID) == strlen(result[i].ssid)) {
            if (memcmp(WIFI_SSID, result[i].ssid, strlen(WIFI_SSID)) == 0) {
                found = TD_TRUE;
                break;
            }
        }
    }

    if (found == TD_FALSE) {
        osal_kfree(result);
        return -1;
    }

    // Copy network info
    memcpy_s(config->ssid, WIFI_MAX_SSID_LEN, WIFI_SSID, strlen(WIFI_SSID));
    memcpy_s(config->bssid, WIFI_MAC_LEN, result[i].bssid, WIFI_MAC_LEN);
    config->security_type = result[i].security_type;
    memcpy_s(config->pre_shared_key, WIFI_MAX_SSID_LEN, WIFI_PASSWORD, strlen(WIFI_PASSWORD));
    config->ip_type = 1;  // DHCP

    osal_kfree(result);
    return 0;
}

/**
 * @brief Check DHCP status
 */
static td_bool check_dhcp_status(struct netif *netif_p, td_u32 *wait_count)
{
    if ((ip_addr_isany(&(netif_p->ip_addr)) == 0) && (*wait_count <= WIFI_GET_IP_MAX_COUNT)) {
        osal_printk("[WiFi] DHCP success!\r\n");
        return 0;
    }

    if (*wait_count > WIFI_GET_IP_MAX_COUNT) {
        osal_printk("[WiFi] DHCP timeout, try again\r\n");
        *wait_count = 0;
        g_wifi_state = WIFI_STATE_INIT;
    }
    return -1;
}

int wifi_connect_to_hotspot(void)
{
    td_char ifname[WIFI_IFNAME_MAX_SIZE + 1] = "wlan0";
    wifi_sta_config_stru config = {0};
    struct netif *netif_p = TD_NULL;
    td_u32 wait_count = 0;
    wifi_scan_params_stru scan_params = {0};
    wifi_event_stru wifi_events = {
        .wifi_event_connection_changed = wifi_connection_callback,
        .wifi_event_scan_state_changed = wifi_scan_callback,
    };

    osal_printk("[WiFi] Initializing...\r\n");

    // Register event callbacks
    if (wifi_register_event_cb(&wifi_events) != 0) {
        osal_printk("[WiFi] Event callback register failed\r\n");
        return -1;
    }

    // Wait for WiFi init
    while (wifi_is_wifi_inited() == 0) {
        osal_msleep(100);
    }
    osal_printk("[WiFi] WiFi initialized\r\n");

    // Enable STA mode
    if (wifi_sta_enable() != 0) {
        osal_printk("[WiFi] STA enable failed\r\n");
        return -1;
    }
    osal_printk("[WiFi] STA enabled\r\n");

    // State machine for connection
    do {
        osal_msleep(10);

        if (g_wifi_state == WIFI_STATE_INIT) {
            osal_printk("[WiFi] Starting scan...\r\n");
            g_wifi_state = WIFI_STATE_SCANNING;

            // Configure scan for our SSID
            memcpy_s(scan_params.ssid, sizeof(scan_params.ssid), WIFI_SSID, strlen(WIFI_SSID) + 1);
            scan_params.scan_type = WIFI_SSID_SCAN;
            scan_params.ssid_len = strlen(WIFI_SSID);

            if (wifi_sta_scan_advance(&scan_params) != 0) {
                g_wifi_state = WIFI_STATE_INIT;
                continue;
            }
        } else if (g_wifi_state == WIFI_STATE_SCAN_DONE) {
            // Get target network from scan results
            if (get_match_network(&config) != 0) {
                osal_printk("[WiFi] AP not found, retry\r\n");
                g_wifi_state = WIFI_STATE_INIT;
                continue;
            }
            g_wifi_state = WIFI_STATE_FOUND_TARGET;
            osal_printk("[WiFi] Found target AP\r\n");
        } else if (g_wifi_state == WIFI_STATE_FOUND_TARGET) {
            osal_printk("[WiFi] Connecting...\r\n");
            g_wifi_state = WIFI_STATE_CONNECTING;

            if (wifi_sta_connect(&config) != 0) {
                g_wifi_state = WIFI_STATE_INIT;
                continue;
            }
        } else if (g_wifi_state == WIFI_STATE_CONNECT_DONE) {
            osal_printk("[WiFi] Starting DHCP...\r\n");
            g_wifi_state = WIFI_STATE_GET_IP;

            netif_p = netifapi_netif_find(ifname);
            if (netif_p == TD_NULL || netifapi_dhcp_start(netif_p) != 0) {
                osal_printk("[WiFi] DHCP start failed\r\n");
                g_wifi_state = WIFI_STATE_INIT;
                continue;
            }
        } else if (g_wifi_state == WIFI_STATE_GET_IP) {
            if (check_dhcp_status(netif_p, &wait_count) == 0) {
                g_wifi_connected = 1;
                break;  // Success!
            }
            wait_count++;
        }
    } while (1);

    if (g_wifi_connected) {
        osal_printk("[WiFi] Successfully connected and got IP!\r\n");
        return 0;
    }

    return -1;
}
