# ensure cmake features we need
CMAKE_MINIMUM_REQUIRED(VERSION 3.1)

include(ExternalProject)
set_property(DIRECTORY PROPERTY EP_BASE ${CMAKE_BINARY_DIR})

project(build_wrapper)

set(DEPENDENCIES_OUTPUT_DIR ${CMAKE_BINARY_DIR}/libs)

ExternalProject_Add(
        SDL2
        URL https://www.libsdl.org/release/SDL2-2.0.20.tar.gz
        URL_MD5 a53acc02e1cca98c4123229069b67c9e
        CMAKE_ARGS
        -DCMAKE_INSTALL_PREFIX=${DEPENDENCIES_OUTPUT_DIR}
        -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
        -DCMAKE_CXX_FLAGS=${CMAKE_CXX_FLAGS}
        -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
        -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}

)
ExternalProject_Add(
        SDL2_image
        DEPENDS SDL2
        URL https://www.libsdl.org/projects/SDL_image/release/SDL2_image-2.0.5.tar.gz
        URL_MD5 f26f3a153360a8f09ed5220ef7b07aea
        CMAKE_ARGS
        -DCMAKE_INSTALL_PREFIX=${DEPENDENCIES_OUTPUT_DIR}
        -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
        -DCMAKE_CXX_FLAGS=${CMAKE_CXX_FLAGS}
        -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
        -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
)
ExternalProject_Add(
        SDL2_ttf
        DEPENDS SDL2
        URL https://github.com/libsdl-org/SDL_ttf/releases/download/release-2.0.18/SDL2_ttf-2.0.18.tar.gz
        URL_MD5 86d3023ad3fab597203022f856cff103
        CMAKE_ARGS
        -DCMAKE_INSTALL_PREFIX=${DEPENDENCIES_OUTPUT_DIR}
        -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
        -DCMAKE_CXX_FLAGS=${CMAKE_CXX_FLAGS}
        -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
        -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
)

ExternalProject_Add(
        zlib
        URL https://www.zlib.net/zlib-1.2.12.tar.gz
        URL_MD5 5fc414a9726be31427b440b434d05f78
        CMAKE_ARGS
        -DCMAKE_INSTALL_PREFIX=${DEPENDENCIES_OUTPUT_DIR}
        -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
        -DCMAKE_CXX_FLAGS=${CMAKE_CXX_FLAGS}
        -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
        -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
)

#ExternalProject_Add(
#        openal-soft
#        URL https://github.com/kcat/openal-soft/archive/openal-soft-1.20.1.tar.gz
#        URL_MD5 9431604d354437b12032c352203c2abb
#        CMAKE_ARGS
#        -DCMAKE_INSTALL_PREFIX=${DEPENDENCIES_OUTPUT_DIR}
#        -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
#        -DCMAKE_CXX_FLAGS=${CMAKE_CXX_FLAGS}
#        -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
#        -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
#)

#ExternalProject_Add(
#        libogg
#        GIT_REPOSITORY https://github.com/xiph/ogg.git
#        CMAKE_ARGS
#        -DCMAKE_INSTALL_PREFIX=${DEPENDENCIES_OUTPUT_DIR}
#        -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
#        -DCMAKE_CXX_FLAGS=${CMAKE_CXX_FLAGS}
#        -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
#        -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
#)
#
#ExternalProject_Add(
#        libvorbis
#        GIT_REPOSITORY https://github.com/xiph/vorbis.git
#        CMAKE_ARGS
#        -DCMAKE_INSTALL_PREFIX=${DEPENDENCIES_OUTPUT_DIR}
#        -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
#        -DCMAKE_CXX_FLAGS=${CMAKE_CXX_FLAGS}
#        -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
#        -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
#)

ExternalProject_Add(
        libpng
        DEPENDS zlib
        URL https://nchc.dl.sourceforge.net/project/libpng/libpng16/1.6.37/libpng-1.6.37.tar.xz
        URL_MD5 015e8e15db1eecde5f2eb9eb5b6e59e9
        CMAKE_ARGS
        -DCMAKE_INSTALL_PREFIX=${DEPENDENCIES_OUTPUT_DIR}
        -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
        -DCMAKE_CXX_FLAGS=${CMAKE_CXX_FLAGS}
        -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
        -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
)


ExternalProject_Add(
        Cytopia
        DEPENDS SDL2 SDL2_image SDL2_ttf SDL2_ttf zlib libpng
        GIT_REPOSITORY https://github.com/CytopiaTeam/Cytopia.git
        CMAKE_ARGS
        -DCMAKE_INSTALL_PREFIX=${DEPENDENCIES_OUTPUT_DIR}
        -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
        -DCMAKE_CXX_FLAGS=${CMAKE_CXX_FLAGS}
        -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
        -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
)