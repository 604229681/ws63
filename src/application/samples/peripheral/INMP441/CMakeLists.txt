#===============================================================================
# @brief    cmake file
# Copyright (c) HiSilicon (Shanghai) Technologies Co., Ltd. 2023-2023. All rights reserved.
#===============================================================================# 添加 Opus 公开头文件目录到 samples 组件set(PUBLIC_HEADER "${PUBLIC_HEADER}" "${ROOT_DIR}/open_source/opus/include" PARENT_SCOPE)# 补充编译选项，确保包含路径生效set(COMPONENT_PUBLIC_CCFLAGS "${COMPONENT_PUBLIC_CCFLAGS}" "-I${ROOT_DIR}/open_source/opus/include" PARENT_SCOPE)# 定义宏 LWS_ROLE_H1 和 LWS_WITH_NETWORK，供 websocket / libwebsockets 相关代码使用set(COMPONENT_PUBLIC_CCFLAGS "${COMPONENT_PUBLIC_CCFLAGS}" "-DLWS_ROLE_H1" "-DLWS_WITH_NETWORK=1" PARENT_SCOPE)

# 添加编译选项以抑制未使用变量的警告
set(COMPONENT_CCFLAGS "${COMPONENT_CCFLAGS}" "-Wno-unused-variable" PARENT_SCOPE)

set(SOURCES "${SOURCES}" "${CMAKE_CURRENT_SOURCE_DIR}/INMP441.c" "${CMAKE_CURRENT_SOURCE_DIR}/audiowebsocket.c" "${CMAKE_CURRENT_SOURCE_DIR}/wlan_hotspot.c" PARENT_SCOPE)



