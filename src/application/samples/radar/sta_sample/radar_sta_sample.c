/**
 * Copyright (c) HiSilicon (Shanghai) Technologies Co., Ltd. 2024-2024. All rights reserved.
 *
 * Description: Radar samples function \n
 *
 */

#include "lwip/netifapi.h"
#include "lwip/sockets.h"
#include "lwip/netif.h"
#include "lwip/etharp.h"
#include "wifi_hotspot.h"
#include "wifi_hotspot_config.h"
#include "wifi_device.h"
#include "td_base.h"
#include "td_type.h"
#include "stdlib.h"
#include "string.h"
#include "uart.h"
#include "cmsis_os2.h"
#include "soc_osal.h"
#include "radar_service.h"
#include "gpio.h"
#include "pinctrl.h"

#define WIFI_IFNAME_MAX_SIZE             16
#define WIFI_MAX_SSID_LEN                33
#define WIFI_SCAN_AP_LIMIT               64
#define WIFI_MAC_LEN                     6
#define WIFI_INIT_WAIT_TIME              500 // 5s
#define WIFI_START_STA_DELAY             100 // 1s

#define RADAR_STATUS_START               1
#define RADAR_STATUS_QUERY_DELAY         1000 // 10s
#define RADAR_QUIT_DELAY_TIME            12 // 12s

#define RADAR_DEFAULT_TIMES 0
#define RADAR_DEFAULT_LOOP 8
#define RADAR_DEFAULT_ANT 0
#define RADAR_DEFAULT_PERIOD 5000
#define RADAR_DEFAULT_DBG_TYPE 3
#define RADAR_DEFAULT_WAVE 2

#define RADAR_API_NO_HUMAN 0
#define RADAR_API_RANGE_CLOSE 50
#define RADAR_API_RANGE_NEAR 100
#define RADAR_API_RANGE_MEDIUM 200
#define RADAR_API_RANGE_FAR 600

#define RADAR_DBG_INFO_RPT_COEF 100
#define RADAR_DBG_INFO_LEN 16

// led档位控制参数
typedef enum {
    RADAR_INSIDE_1M,
    RADAR_INSIDE_2M,
    RADAR_INSIDE_6M,
} radar_led_gear_t;

radar_led_gear_t g_radar_led_gear = RADAR_INSIDE_1M;

// 人体姿态检测定义与状态追踪
typedef enum {
    RADAR_STATE_NONE,   // 无人
    RADAR_STATE_STAND,  // 站立
    RADAR_STATE_SIT,    // 坐下
} radar_user_state_t;

static radar_user_state_t g_user_state = RADAR_STATE_NONE;
static radar_user_state_t g_pending_state = RADAR_STATE_NONE;
static uint32_t g_state_stable_count = 0;
static uint32_t g_sit_duration = 0;

/*****************************************************************************
  STA 扫描-关联 sample用例
*****************************************************************************/
void radar_set_led_gear(radar_led_gear_t gear)
{
    PRINT("[RADAR_SAMPLE] SET LED GEAR:%u!\r\n", gear);
    g_radar_led_gear = gear;
}

static void radar_led_init(void)
{
    // 1. 初始化所有GPIO并设置GPIO的类型
    uapi_gpio_init();
    // 2. 设置GPIO为输出
    errcode_t ret = uapi_gpio_set_dir(GPIO_13, GPIO_DIRECTION_OUTPUT);
    if (ret != ERRCODE_SUCC) {
        PRINT("[RADAR_SAMPLE] led uapi_gpio_set_dir failed %u!\r\n", ret);
    }
    // 3. 设置GPIO PIN模式为0，普通模式
    ret = uapi_pin_set_mode(GPIO_13, PIN_MODE_0);
    if (ret != ERRCODE_SUCC) {
        PRINT("[RADAR_SAMPLE] led uapi_pin_set_mode failed %u!\r\n", ret);
    }
}

static void radar_set_led_on(void)
{
    errcode_t ret = uapi_gpio_set_val(GPIO_13, GPIO_LEVEL_HIGH);
    if (ret!= ERRCODE_SUCC) {
        PRINT("[RADAR_SAMPLE] led ctrl failed %u!\r\n", ret);
    }
}

static void radar_set_led_off(void)
{
    errcode_t ret = uapi_gpio_set_val(GPIO_13, GPIO_LEVEL_LOW);
    if (ret!= ERRCODE_SUCC) {
        PRINT("[RADAR_SAMPLE] led ctrl failed %u!\r\n", ret);
    }
}

static void radar_ctrl_led(radar_result_t *res)
{
    switch (g_radar_led_gear) {
        case RADAR_INSIDE_1M:
            if (res->lower_boundary == 0 && res->upper_boundary == RADAR_API_RANGE_NEAR) {
                radar_set_led_on();
            } else {
                radar_set_led_off();
            }
            break;
        case RADAR_INSIDE_2M:
            if ((res->lower_boundary == RADAR_API_RANGE_NEAR &&
                 res->upper_boundary == RADAR_API_RANGE_MEDIUM) ||
                (res->lower_boundary == 0 && res->upper_boundary == RADAR_API_RANGE_NEAR)) {
                radar_set_led_on();
            } else {
                radar_set_led_off();
            }
            break;
        default:    // 默认6M档位
            if (res->is_human_presence == 1) {
                radar_set_led_on();
            } else {
                radar_set_led_off();
            }
    }
}

td_s32 radar_start_sta(td_void)
{
    (void)osDelay(WIFI_INIT_WAIT_TIME); /* 500: 延时0.5s, 等待wifi初始化完毕 */
    PRINT("STA try enable.\r\n");
    /* 创建STA接口 */
    if (wifi_sta_enable() != 0) {
        PRINT("sta enbale fail !\r\n");
        return -1;
    }

    /* 连接成功 */
    PRINT("STA enable success.\r\n");
    return 0;
}

static void radar_print_res(radar_result_t *res)
{
    if (res->is_human_presence == 1) {
        PRINT("[RADAR_SAMPLE] 检测结果: 有人 (靠近下边界:%u cm, 靠近上边界:%u cm)\r\n", res->lower_boundary, res->upper_boundary);
    } else {
        PRINT("[RADAR_SAMPLE] 检测结果: 无人\r\n");
    }

    radar_ctrl_led(res);
}

static void radar_print_cur_frame_res(radar_current_frame_result_t *res)
{
    PRINT("[RADAR_SAMPLE] gear1:%u, gear2:%u, gear3:%u, ai:%u\r\n",
        res->gear_one_flag, res->gear_two_flag, res->gear_three_flag, res->ai_flag);
}

// 维测信息依次为:
// 1.告知上层是否需要写入flash
// 2.LNA * 10 + VGA
// 3.原始回波峰值
// 4.过去period帧的平均MO1底噪
// 5.过去period帧的平均MO2底噪
// 6.过去period帧的平均DP底噪
// 7.过去period帧的平均帧间隔
// 8.过去period帧中帧间隔超过Xms的帧数
// 9.过去period帧中bitmap数量超过X门限的帧数
// 10.过去period帧中bitmap比例超过X门限的帧数
// 11.过去period帧中是在参与统计的帧数
// 12.过去period帧中帧间隔最大值
// 13.过去period帧中帧间隔最大值下标
// 14.当前所使用的算法参数MO1门限
// 15.当前所使用的算法参数MO2门限
// 16.当前所使用的算法参数DP门限
static void radar_print_dbg_info(int16_t *arr, uint8_t len)
{
    if (len > RADAR_DBG_INFO_LEN || len == 0) {
        return;
    }

    PRINT("dbg_info: %d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\r\n",
        arr[0], arr[1], arr[2], arr[3], arr[4], arr[5], arr[6], arr[7], arr[8], arr[9], arr[10],
        arr[11], arr[12], arr[13], arr[14], arr[15]);
}

static void radar_init_para(void)
{
    radar_dbg_para_t dbg_para;
    dbg_para.times = RADAR_DEFAULT_TIMES;
    dbg_para.loop = RADAR_DEFAULT_LOOP;
    dbg_para.ant = RADAR_DEFAULT_ANT;
    dbg_para.wave = RADAR_DEFAULT_WAVE;
    dbg_para.dbg_type = RADAR_DEFAULT_DBG_TYPE;
    dbg_para.period = RADAR_DEFAULT_PERIOD;
    uapi_radar_set_debug_para(&dbg_para);

    int16_t dly_time = RADAR_QUIT_DELAY_TIME;
    uapi_radar_set_delay_time(dly_time);

    radar_sel_para_t sel_para;
    sel_para.height = RADAR_HEIGHT_2M;
    sel_para.scenario = RADAR_SCENARIO_TYPE_HOME;
    sel_para.material = RADAR_MATERIAL_SINGLE;
    sel_para.fusion_track = true;
    sel_para.fusion_ai = true;
    uapi_radar_select_alg_para(&sel_para);

    // 算法门限, 前三个使用tools/bin/radar_tool/radar_para_gen_tool工具标定, 后面五个使用本sample给出的默认值即可
    radar_alg_para_t alg_para;
    memset(&alg_para, 0, sizeof(radar_alg_para_t));
    alg_para.d_th_1m = 8;
    alg_para.d_th_2m = 8;
    alg_para.p_th = 8;
    alg_para.t_th_1m = 13;
    alg_para.t_th_2m = 26;
    alg_para.b_th_ratio = 20;
    alg_para.b_th_cnt = 4;
    alg_para.a_th = 70;
    alg_para.pt_cld_para_1 = 60;
    alg_para.pt_cld_para_2 = 0;
    alg_para.pt_cld_para_3 = 2;
    alg_para.pt_cld_para_4 = 0;
    alg_para.rd_pwr_para_1 = 35;
    alg_para.rd_pwr_para_2 = 26;
    alg_para.rd_pwr_para_3 = 13;
    uapi_radar_set_alg_para(&alg_para, 0);
}

static uint16_t icmp_chksum(void *dataptr, int len)
{
    uint32_t acc = 0;
    uint16_t *src = (uint16_t *)dataptr;
    while (len > 1) {
        acc += *src++;
        len -= 2;
    }
    if (len > 0) {
        acc += *(uint8_t *)src;
    }
    acc = (acc >> 16) + (acc & 0x0000ffffUL);
    acc += (acc >> 16);
    return (uint16_t)(~acc);
}

struct icmp_packet_t {
    uint8_t type;
    uint8_t code;
    uint16_t chksum;
    uint16_t id;
    uint16_t seq;
    uint8_t data[32];
};

static void radar_traffic_stimulus_task(void *param)
{
    (void)param;
    int udp_sock = -1;
    int raw_sock = -1;
    struct sockaddr_in udp_addr;
    struct sockaddr_in raw_addr;
    int print_count = 0;
    int udp_sent = 0;
    int udp_recv = 0;
    int raw_sent = 0;
    int raw_recv = 0;
    int arp_sent = 0;
    int loop_cnt = 0;

    // DNS Query for a.com (23 bytes)
    unsigned char dns_query[] = {
        0x12, 0x34, // Transaction ID
        0x01, 0x00, // Flags: Standard query
        0x00, 0x01, // Questions: 1
        0x00, 0x00, // Answer RRs: 0
        0x00, 0x00, // Authority RRs: 0
        0x00, 0x00, // Additional RRs: 0
        0x01, 'a',  // Label: "a"
        0x03, 'c', 'o', 'm', // Label: "com"
        0x00,       // Null terminator
        0x00, 0x01, // Type: A
        0x00, 0x01  // Class: IN
    };

    uint16_t tx_id = 0x1234;

    for (;;) {
        struct netif *netif = netifapi_netif_find("wlan0");
        if (netif == NULL || !netif_is_up(netif) || ip_addr_isany(&(netif->ip_addr))) {
            if (udp_sock >= 0) {
                lwip_close(udp_sock);
                udp_sock = -1;
            }
            if (raw_sock >= 0) {
                lwip_close(raw_sock);
                raw_sock = -1;
            }
            if (print_count % 10 == 0) {
                PRINT("[STIMULUS] WiFi not connected or wlan0 down...\r\n");
            }
            print_count++;
            osDelay(10); // Wait 100ms
            continue;
        }

        // Initialize UDP socket
        if (udp_sock < 0) {
            udp_sock = socket(AF_INET, SOCK_DGRAM, 0);
            if (udp_sock >= 0) {
                int val = 1;
                ioctlsocket(udp_sock, FIONBIO, &val);

                memset(&udp_addr, 0, sizeof(udp_addr));
                udp_addr.sin_family = AF_INET;
                udp_addr.sin_port = htons(53); // DNS Port
                udp_addr.sin_addr.s_addr = netif_ip4_gw(netif)->addr;
                
                PRINT("[STIMULUS] UDP Socket created. Gateway IP: %u.%u.%u.%u\r\n",
                    (unsigned int)(udp_addr.sin_addr.s_addr & 0xFF),
                    (unsigned int)((udp_addr.sin_addr.s_addr >> 8) & 0xFF),
                    (unsigned int)((udp_addr.sin_addr.s_addr >> 16) & 0xFF),
                    (unsigned int)((udp_addr.sin_addr.s_addr >> 24) & 0xFF));

                errcode_t pm_ret = wifi_sta_set_pm(0);
                PRINT("[STIMULUS] Disable wifi pm ret: %d\r\n", pm_ret);
            } else {
                PRINT("[STIMULUS] Failed to create UDP socket!\r\n");
            }
        }

        // Initialize RAW socket (Ping)
        if (raw_sock < 0) {
            raw_sock = socket(AF_INET, SOCK_RAW, IPPROTO_ICMP);
            if (raw_sock >= 0) {
                int val = 1;
                ioctlsocket(raw_sock, FIONBIO, &val);

                memset(&raw_addr, 0, sizeof(raw_addr));
                raw_addr.sin_family = AF_INET;
                raw_addr.sin_port = 0;
                raw_addr.sin_addr.s_addr = netif_ip4_gw(netif)->addr;
                
                PRINT("[STIMULUS] RAW Socket created. Gateway IP: %u.%u.%u.%u\r\n",
                    (unsigned int)(raw_addr.sin_addr.s_addr & 0xFF),
                    (unsigned int)((raw_addr.sin_addr.s_addr >> 8) & 0xFF),
                    (unsigned int)((raw_addr.sin_addr.s_addr >> 16) & 0xFF),
                    (unsigned int)((raw_addr.sin_addr.s_addr >> 24) & 0xFF));
            } else {
                PRINT("[STIMULUS] Failed to create RAW socket, errno = %d\r\n", errno);
            }
        }

        tx_id++;
        loop_cnt++;

        // ========================================================================
        // CRITICAL: Send stimulus at LOW frequency (5Hz) to avoid starving radar!
        // The WS63 radar shares the WiFi radio. Each stimulus packet occupies the
        // radio for ~2-5ms. At 260pps (old rate), stimulus consumed ~78% of radio
        // time, leaving only 1.3 radar frames/sec (664ms interval).
        // At 5Hz (~7pps total), stimulus uses <3% radio time, giving radar 97%+.
        // ========================================================================

        // Send 1 ICMP Ping every 20 ticks = 5Hz (primary keepalive)
        if (loop_cnt % 20 == 0 && raw_sock >= 0) {
            struct icmp_packet_t ping_pkt;
            memset(&ping_pkt, 0, sizeof(ping_pkt));
            ping_pkt.type = 8; // ICMP Echo Request
            ping_pkt.code = 0;
            ping_pkt.id = htons(0x1234);
            ping_pkt.seq = htons(tx_id);
            for (int i = 0; i < 32; i++) {
                ping_pkt.data[i] = (uint8_t)i;
            }
            ping_pkt.chksum = 0;
            ping_pkt.chksum = icmp_chksum(&ping_pkt, sizeof(ping_pkt));

            int ret = sendto(raw_sock, &ping_pkt, sizeof(ping_pkt), 0, (struct sockaddr *)&raw_addr, sizeof(raw_addr));
            if (ret < 0) {
                PRINT("[STIMULUS] RAW sendto failed, ret = %d, errno = %d\r\n", ret, errno);
                lwip_close(raw_sock);
                raw_sock = -1;
            } else {
                raw_sent++;
            }
        }

        // Send 1 UDP DNS every 100 ticks = 1Hz (secondary keepalive)
        if (loop_cnt % 100 == 0 && udp_sock >= 0) {
            dns_query[0] = (tx_id >> 8) & 0xFF;
            dns_query[1] = tx_id & 0xFF;
            int ret = sendto(udp_sock, dns_query, sizeof(dns_query), 0, (struct sockaddr *)&udp_addr, sizeof(udp_addr));
            if (ret < 0) {
                PRINT("[STIMULUS] UDP sendto failed, ret = %d, errno = %d\r\n", ret, errno);
                lwip_close(udp_sock);
                udp_sock = -1;
            } else {
                udp_sent++;
            }
        }

        // Send ARP every 500 ticks = 0.2Hz (MAC keepalive)
        if (loop_cnt % 500 == 0) {
            ip4_addr_t gw_ip;
            gw_ip.addr = netif_ip4_gw(netif)->addr;
            err_t arp_ret = etharp_request(netif, &gw_ip);
            if (arp_ret == ERR_OK) {
                arp_sent++;
            }
        }

        // Non-blocking RX drain at 5Hz (match ICMP send rate)
        if (loop_cnt % 20 == 10) {
            if (udp_sock >= 0) {
                char rx_buf[64];
                struct sockaddr_in from_addr;
                socklen_t from_len = sizeof(from_addr);
                int rx_len;
                do {
                    rx_len = recvfrom(udp_sock, rx_buf, sizeof(rx_buf), 0, (struct sockaddr *)&from_addr, &from_len);
                    if (rx_len > 0) {
                        udp_recv++;
                    }
                } while (rx_len > 0);
            }
            if (raw_sock >= 0) {
                char rx_buf[128];
                struct sockaddr_in from_addr;
                socklen_t from_len = sizeof(from_addr);
                int rx_len;
                do {
                    rx_len = recvfrom(raw_sock, rx_buf, sizeof(rx_buf), 0, (struct sockaddr *)&from_addr, &from_len);
                    if (rx_len > 0) {
                        raw_recv++;
                    }
                } while (rx_len > 0);
            }
        }

        // Print stats every 10 seconds (1000 ticks)
        if (loop_cnt % 1000 == 0) {
            PRINT("[STIMULUS] Loop %d. Sent UDP:%d(Rx:%d), RAW:%d(Rx:%d), ARP:%d\r\n",
                loop_cnt, udp_sent, udp_recv, raw_sent, raw_recv, arp_sent);
        }

        osDelay(1); // 1 tick = 10ms, loop runs at 100Hz but sends at 5Hz
    }
}

int radar_demo_init(void *param)
{
    PRINT("[RADAR_SAMPLE] radar_demo_init sta!\r\n");
    param = param;
    radar_led_init();
    osal_kthread_create((osal_kthread_handler)radar_traffic_stimulus_task, 0, "RadarTrafficStim", 4096);
    radar_start_sta();
    wifi_sta_set_pm(0);
    uapi_radar_register_result_cb(radar_print_res);
    uapi_radar_register_current_frame_result_cb(radar_print_cur_frame_res);
    uapi_radar_register_debug_info_cb(radar_print_dbg_info, RADAR_DBG_INFO_RPT_COEF);

    // 启动雷达
    (void)osDelay(WIFI_START_STA_DELAY);
    uapi_radar_set_status(RADAR_STATUS_START);
    radar_init_para();

    for (;;) {
        (void)osDelay(RADAR_STATUS_QUERY_DELAY);
        uint8_t sts;
        uapi_radar_get_status(&sts);
        uapi_radar_get_hardware_status(&sts);
        uint16_t time;
        uapi_radar_get_delay_time(&time);
        uint16_t iso;
        uapi_radar_get_isolation(&iso);
        radar_result_t res = {0};
        uapi_radar_get_result(&res);
        if (res.is_human_presence == 1) {
            PRINT("[RADAR_SAMPLE] 检测结果: 有人 (靠近下边界:%u cm, 靠近上边界:%u cm)\r\n", res.lower_boundary, res.upper_boundary);
        } else {
            PRINT("[RADAR_SAMPLE] 检测结果: 无人\r\n");
        }
        radar_current_frame_result_t cur_frame_res = {0};
        uapi_radar_get_current_frame_result(&cur_frame_res);
        int16_t arr[RADAR_DBG_INFO_LEN] = {0};
        uapi_radar_get_debug_info(arr, RADAR_DBG_INFO_LEN);
        radar_print_dbg_info(arr, RADAR_DBG_INFO_LEN);

        // 姿态与动作检测判定逻辑
        radar_user_state_t target_state = RADAR_STATE_NONE;
        if (res.is_human_presence == 0) {
            target_state = RADAR_STATE_NONE;
        } else {
            // 当有人时，根据靠近下边界距离判定：
            // 距离 >= 120cm 判定为坐下 (SIT)，距离 < 120cm 判定为站立 (STAND)
            if (res.lower_boundary >= 120) {
                target_state = RADAR_STATE_SIT;
            } else {
                target_state = RADAR_STATE_STAND;
            }
        }

        // 状态抖动滤波 (连续两帧结果相同才切换状态)
        if (target_state == g_user_state) {
            g_pending_state = g_user_state;
            g_state_stable_count = 0;
        } else {
            if (target_state == g_pending_state) {
                g_state_stable_count++;
                if (g_state_stable_count >= 2) {
                    // 执行状态跃迁并打印动作与状态信息
                    if (g_user_state == RADAR_STATE_SIT && target_state == RADAR_STATE_STAND) {
                        PRINT("[RADAR_DETECTION] 动作判定: 起身 (坐下 -> 站立). 坐下总时长: %u 秒\r\n", g_sit_duration);
                    } else if (g_user_state == RADAR_STATE_STAND && target_state == RADAR_STATE_SIT) {
                        PRINT("[RADAR_DETECTION] 动作判定: 坐下 (站立 -> 坐下).\r\n");
                        g_sit_duration = 0;
                    } else if (g_user_state == RADAR_STATE_NONE && target_state == RADAR_STATE_STAND) {
                        PRINT("[RADAR_DETECTION] 状态判定: 有人 (当前状态: 站立).\r\n");
                    } else if (g_user_state == RADAR_STATE_NONE && target_state == RADAR_STATE_SIT) {
                        PRINT("[RADAR_DETECTION] 状态判定: 有人 (当前状态: 直接坐下).\r\n");
                        g_sit_duration = 0;
                    } else if (target_state == RADAR_STATE_NONE) {
                        if (g_user_state == RADAR_STATE_SIT) {
                            PRINT("[RADAR_DETECTION] 状态判定: 无人 (人已离开). 累计坐下总时长: %u 秒\r\n", g_sit_duration);
                        } else {
                            PRINT("[RADAR_DETECTION] 状态判定: 无人 (人已离开).\r\n");
                        }
                        g_sit_duration = 0;
                    }
                    g_user_state = target_state;
                    g_state_stable_count = 0;
                }
            } else {
                g_pending_state = target_state;
                g_state_stable_count = 1;
            }
        }

        // 坐下时长统计与打印
        if (g_user_state == RADAR_STATE_SIT) {
            g_sit_duration++;
            PRINT("[RADAR_DETECTION] 坐下状态持续中... 当前累计时间: %u 秒\r\n", g_sit_duration);
        }
    }

    return 0;
}
