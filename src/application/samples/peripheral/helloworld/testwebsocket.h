
/*
 * Copyright (c) HiSilicon (Shanghai) Technologies Co., Ltd. 2022-2023. All rights reserved.
 * Description: the header file for main.
 *
 */

#ifndef __TESTWEBSOCKET_H__
#define __TESTWEBSOCKET_H__

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif

/* Public entry used by other modules to start the websocket task.
   The implementation in testwebsocket.c provides a non-static wrapper
   `test_websocket_task(void)` that launches the actual handler. */
void test_websocket_task(void);

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

#endif //__TESTWEBSOCKET_H__
