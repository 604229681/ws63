#include "soc_osal.h"
#include "osal_debug.h"
#include "cmsis_os2.h"
#include "app_init.h"

#include <libwebsockets.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <errno.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

#define TESTWEBSOCKET_TASK_STACK_SIZE 0x4000  // 16 KB stack for libwebsockets context creation
#define TESTWEBSOCKET_TASK_PRIO 10

static void testwebsocket_entry(void);

// WebSocket 数据的结构体，用于存储每个会话的数据
struct per_session_data {
};

// WebSocket 服务器消息的回调函数
int callback(struct lws *wsi, enum lws_callback_reasons reason, void *user, void *in, size_t len) {
    (void)user;
    (void)in;
    (void)len;
    
    osal_printk(" WebSocket callback %d\r\n", reason);
    switch (reason) {
        case LWS_CALLBACK_ESTABLISHED: // 处理新连接事件
            // 添加计时器，每秒发送一个时间戳
            lws_callback_on_writable(wsi);
            break;
        case LWS_CALLBACK_SERVER_WRITEABLE: // 处理发送数据事件
        {
            // 发送时间戳
            time_t t = time(NULL);
            char timestamp[20];
            sprintf(timestamp, "%ld", (long)t);
            lws_write(wsi, (unsigned char *)timestamp, strlen(timestamp), LWS_WRITE_TEXT);
            lws_callback_on_writable(wsi);
            break;
        }
        default:
            // 其他事件不需要处理
            break;
    }
    return 0;
}

void test_websocket_task(void)
{
    /* public wrapper: start the internal handler (which expects a void* arg)
       The handler is started directly here to keep the sample simple. */
    testwebsocket_entry();
}


static void  test_websocket_handler(void *arg) {
    (void)arg;
    
    // 创建 WebSocket 协议
    static struct lws_protocols protocols[] = {
        {
            "demo-protocol", // 协议名称，需要和前端代码中的 WebSocket 协议相同
            callback, // 回调函数指针
            sizeof(struct per_session_data), // 每个会话（连接）所拥有的数据大小
            0, // rx_buffer_size
            0, // id
            NULL, // user
            0 // tx_packet_size
        },
        LWS_PROTOCOL_LIST_TERM // 协议列表终止符
    };

#    // 创建 WebSocket 上下文
    struct lws_context_creation_info info;
    memset(&info, 0, sizeof(info));
#if defined(LWS_WITH_NETWORK)
    info.port = 3001; // 监听端口号
    info.protocols = protocols; // 协议列表
    osal_printk("LWS_WITH_NETWORK is defined, WebSocket server work.\r\n");

    /* Pre-flight: try a simple socket() + bind() to the same port.  If the
       platform's socket API is not functional or bind fails, skip starting
       libwebsockets and log the errno. This isolates whether the crash is
       caused by the underlying socket/bind operation. */
    int skip_lws = 0;
    int s = socket(AF_INET, SOCK_STREAM, 0);
    if (s < 0) {
        osal_printk("[Websocket] socket() failed: %d\r\n", errno);
        skip_lws = 1;
    } else {
        struct sockaddr_in sa;
        memset(&sa, 0, sizeof(sa));
        sa.sin_family = AF_INET;
        sa.sin_addr.s_addr = htonl(INADDR_ANY);
        sa.sin_port = htons(3001);
        int reuse = 1;
        setsockopt(s, SOL_SOCKET, SO_REUSEADDR, &reuse, sizeof(reuse));
        if (bind(s, (struct sockaddr *)&sa, sizeof(sa)) != 0) {
            osal_printk("[Websocket] pre-bind failed, errno=%d\r\n", errno);
            skip_lws = 1;
        }
        close(s);
    }

    if (skip_lws) {
        osal_printk("[Websocket] Skipping lws_create_context due to socket/bind failure\r\n");
        return;
    }

    struct lws_context *context = lws_create_context(&info);

#else
    // LWS_WITH_NETWORK is required for WebSocket server
    osal_printk("LWS_WITH_NETWORK is not defined, WebSocket server cannot work.\r\n");
    return;
#endif

    // 判断 WebSocket 上下文是否创建成功
    if (!context) {
        osal_printk("Failed to create WebSocket context.\r\n");
        return;
    }

    // 进入循环，等待 WebSocket 连接
    while (1) {
        int ret = lws_service(context, 10000);
        osal_printk("*******=========Test WebSocket lws_service returned %d\r\n", ret);
    }

    // 清理并关闭 WebSocket 上下文
    lws_context_destroy(context);
}

static void testwebsocket_entry(void)
{
    osal_printk("Test WebSocket Driver Entry\r\n");
    osal_task *task_handle = NULL;
    
    osal_kthread_lock();
    task_handle = osal_kthread_create((osal_kthread_handler)test_websocket_handler, 0, 
                                      "TestWebSocketTask", TESTWEBSOCKET_TASK_STACK_SIZE);
    if (task_handle != NULL) {
        osal_kthread_set_priority(task_handle, TESTWEBSOCKET_TASK_PRIO);
        osal_printk("Test WebSocket Task created successfully\r\n");
    } else {
        osal_printk("Failed to create Test WebSocket Task\r\n");    
    }
    osal_kthread_unlock();
}