cmake_minimum_required(VERSION 3.18)
include(FetchContent)

set(SRC_DIR "${CMAKE_SOURCE_DIR}/..")

FetchContent_Populate(
       Cytopia
       GIT_REPOSITORY https://github.com/CytopiaTeam/Cytopia.git
       SOURCE_DIR "${SRC_DIR}/Cytopia/source"
)

FetchContent_Populate(
        SDL2
        URL https://www.libsdl.org/release/SDL2-2.0.20.tar.gz
        URL_MD5 a53acc02e1cca98c4123229069b67c9e
        SOURCE_DIR "${SRC_DIR}/SDL2/source/sdl"

)
FetchContent_Populate(
       SDL_image
       URL https://www.libsdl.org/projects/SDL_image/release/SDL2_image-2.0.5.tar.gz
       URL_MD5 f26f3a153360a8f09ed5220ef7b07aea
       SOURCE_DIR "${SRC_DIR}/SDL2/source/sdl_image"
)
FetchContent_Populate(
       SDL2_ttf
       URL https://github.com/libsdl-org/SDL_ttf/releases/download/release-2.0.18/SDL2_ttf-2.0.18.tar.gz
       URL_MD5 86d3023ad3fab597203022f856cff103
       SOURCE_DIR "${SRC_DIR}/SDL2/source/sdl_ttf"
)

FetchContent_Populate(
       libnoise
       GIT_REPOSITORY https://github.com/qknight/libnoise.git
       SOURCE_DIR "${SRC_DIR}/libnoise/source"
)
FetchContent_Populate(
       zlib
       URL https://www.zlib.net/zlib-1.2.12.tar.gz
       URL_MD5 5fc414a9726be31427b440b434d05f78
       SOURCE_DIR "${SRC_DIR}/zlib/source"
)
FetchContent_Populate(
       openal-soft
       URL https://github.com/kcat/openal-soft/archive/openal-soft-1.20.1.tar.gz
       URL_MD5 9431604d354437b12032c352203c2abb
       SOURCE_DIR "${SRC_DIR}/openal-soft/source"
)

FetchContent_Populate(
       ogg
       GIT_REPOSITORY https://github.com/xiph/ogg.git
       SOURCE_DIR "${SRC_DIR}/ogg/source"
)

FetchContent_Populate(
       vorbis
       GIT_REPOSITORY https://github.com/xiph/vorbis.git
       SOURCE_DIR "${SRC_DIR}/vorbis/source"
)

FetchContent_Populate(
       libpng
       URL https://nchc.dl.sourceforge.net/project/libpng/libpng16/1.6.37/libpng-1.6.37.tar.xz
       URL_MD5 015e8e15db1eecde5f2eb9eb5b6e59e9
       SOURCE_DIR "${SRC_DIR}/libpng/source"
)