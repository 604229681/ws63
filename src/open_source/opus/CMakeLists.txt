set(COMPONENT_NAME "opus")

set(CMAKE_OPUS_SOURCE_DIR
    ${CMAKE_CURRENT_SOURCE_DIR})

# Collect library C sources only (exclude demos/tests)
file(GLOB_RECURSE OPUS_ALL_C
        ${CMAKE_OPUS_SOURCE_DIR}/celt/*.c
        ${CMAKE_OPUS_SOURCE_DIR}/silk/*.c
        ${CMAKE_OPUS_SOURCE_DIR}/silk/fixed/*.c
        ${CMAKE_OPUS_SOURCE_DIR}/silk/float/*.c
        ${CMAKE_OPUS_SOURCE_DIR}/src/*.c)
# Filter out non-library sources if any slipped in
list(FILTER OPUS_ALL_C EXCLUDE REGEX ".*/test_.*\\.c$")
list(FILTER OPUS_ALL_C EXCLUDE REGEX ".*/.*demo.*\\.c$")
list(FILTER OPUS_ALL_C EXCLUDE REGEX ".*/compare.*\\.c$")
# Exclude non-library tools with main()
list(FILTER OPUS_ALL_C EXCLUDE REGEX ".*/opus_compare\\.c$")
list(FILTER OPUS_ALL_C EXCLUDE REGEX ".*/opus_demo\\.c$")
# Exclude NE10-specific ARM sources to avoid requiring NE10 headers/libs
list(FILTER OPUS_ALL_C EXCLUDE REGEX ".*/celt/arm/.*ne10.*\\.c$")
# Exclude all ARM-specific sources when toolchain lacks NEON intrinsics
list(FILTER OPUS_ALL_C EXCLUDE REGEX ".*/celt/arm/.*\\.c$")
list(FILTER OPUS_ALL_C EXCLUDE REGEX ".*/silk/arm/.*\\.c$")
list(FILTER OPUS_ALL_C EXCLUDE REGEX ".*/silk/fixed/arm/.*\\.c$")
# Exclude x86-specific sources to avoid requiring SSE/AVX intrinsics
list(FILTER OPUS_ALL_C EXCLUDE REGEX ".*/celt/x86/.*\\.c$")
list(FILTER OPUS_ALL_C EXCLUDE REGEX ".*/silk/x86/.*\\.c$")
list(FILTER OPUS_ALL_C EXCLUDE REGEX ".*/silk/fixed/x86/.*\\.c$")
list(FILTER OPUS_ALL_C EXCLUDE REGEX ".*/silk/float/x86/.*\\.c$")

# Source files (C only, headers not required here)
set(SOURCES
        ${OPUS_ALL_C}
)

set(PUBLIC_HEADER
    ${CMAKE_OPUS_SOURCE_DIR}/include
    ${CMAKE_OPUS_SOURCE_DIR}/src
    ${CMAKE_OPUS_SOURCE_DIR}/celt
    ${CMAKE_OPUS_SOURCE_DIR}/silk
)

set(PRIVATE_HEADER
    ${CMAKE_OPUS_SOURCE_DIR}
    ${CMAKE_OPUS_SOURCE_DIR}/src
    ${CMAKE_OPUS_SOURCE_DIR}/celt
    ${CMAKE_OPUS_SOURCE_DIR}/silk
)

# Keep minimal required defines to avoid upstream CMake error paths
set(PRIVATE_DEFINES
    VAR_ARRAYS
    USE_ALLOCA
    OPUS_BUILD
    NONTHREADSAFE_PSEUDOSTACK
    OPUS_WILL_BE_SLOW
    HAVE_LRINT=1
    HAVE_LRINTF=1
    OPUS_USE_NE10=0
)

set(PUBLIC_DEFINES
)

# Suppress some warnings similar to mqtt component
set(COMPONENT_PUBLIC_CCFLAGS
    -I${CMAKE_OPUS_SOURCE_DIR}/include
    -I${CMAKE_OPUS_SOURCE_DIR}/silk
    -I${CMAKE_OPUS_SOURCE_DIR}/silk/float
    -I${CMAKE_OPUS_SOURCE_DIR}/silk/fixed
    -I${CMAKE_OPUS_SOURCE_DIR}/celt
    -I${CMAKE_OPUS_SOURCE_DIR}/src
)

set(COMPONENT_CCFLAGS
    -Wno-sign-compare
    -Wno-unused-parameter
    -Wno-missing-prototypes
    -Wno-missing-declarations
    -Wno-implicit-function-declaration
    -Wno-unused-function
    -Wno-error
    -Wno-error=cpp
)

set(WHOLE_LINK
    true
)

set(MAIN_COMPONENT
    false
)

if(${COMPONENT_NAME} IN_LIST TARGET_COMPONENT)
    build_component()
endif()
