#===============================================================================
# @brief    cmake file
# Copyright (c) HiSilicon (Shanghai) Technologies Co., Ltd. 2023-2023. All rights reserved.
#===============================================================================
# 添加 Opus 公开头文件目录到 samples 组件
set(PUBLIC_HEADER "${PUBLIC_HEADER}" "${ROOT_DIR}/open_source/opus/include" PARENT_SCOPE)

# 补充编译选项，确保包含路径生效
set(COMPONENT_PUBLIC_CCFLAGS "${COMPONENT_PUBLIC_CCFLAGS}" "-I${ROOT_DIR}/open_source/opus/include" PARENT_SCOPE)

# 定义宏 LWS_ROLE_H1 和 LWS_WITH_NETWORK，供 websocket / libwebsockets 相关代码使用
set(COMPONENT_PUBLIC_CCFLAGS "${COMPONENT_PUBLIC_CCFLAGS}" "-DLWS_ROLE_H1" "-DLWS_WITH_NETWORK=1" PARENT_SCOPE)


# 添加编译选项以抑制未使用变量的警告
set(COMPONENT_CCFLAGS "${COMPONENT_CCFLAGS}" "-Wno-unused-variable" PARENT_SCOPE)

# 链接 opus 组件
set(DEPENDENCIES "${DEPENDENCIES}" opus PARENT_SCOPE)

# Ensure websocket sample is built alongside STA sample so test_websocket_task is linked
#set(SOURCES "${SOURCES}" "${CMAKE_CURRENT_SOURCE_DIR}/sta_sample.c" "${CMAKE_CURRENT_SOURCE_DIR}/testwebsocket.c" PARENT_SCOPE)
#set(SOURCES "${SOURCES}" "${CMAKE_CURRENT_SOURCE_DIR}/helloworld.c" PARENT_SCOPE)
#set(SOURCES "${SOURCES}" "${CMAKE_CURRENT_SOURCE_DIR}/i2s_dma_lli_slave_demo.c" PARENT_SCOPE)
set(SOURCES "${SOURCES}" "${CMAKE_CURRENT_SOURCE_DIR}/slave_new.c" PARENT_SCOPE)
#set(SOURCES "${SOURCES}" "${CMAKE_CURRENT_SOURCE_DIR}/slave.c" PARENT_SCOPE)
#set(SOURCES "${SOURCES}" "${CMAKE_CURRENT_SOURCE_DIR}/testwebsocket.c" PARENT_SCOPE)



