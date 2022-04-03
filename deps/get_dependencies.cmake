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
        #URL_MD5 aad0327fad5a183aaeb9ae4b9bd97ef0
        SOURCE_DIR "${SRC_DIR}/SDL2/sdl-source"

)
FetchContent_Populate(
       SDL_image
       URL https://www.libsdl.org/projects/SDL_image/release/SDL2_image-2.0.5.tar.gz
       #URL_MD5 aad0327fad5a183aaeb9ae4b9bd97ef0
       SOURCE_DIR "${SRC_DIR}/SDL2/SDL_image-source"
)
FetchContent_Populate(
       SDL2_ttf
       URL https://www.libsdl.org/projects/SDL_ttf/release/SDL2_ttf-2.0.15.tar.gz
       #URL_MD5 aad0327fad5a183aaeb9ae4b9bd97ef0
       SOURCE_DIR "${SRC_DIR}/SDL2/SDL2_ttf-source"
)

FetchContent_Populate(
       libnoise
       GIT_REPOSITORY https://github.com/qknight/libnoise.git
       SOURCE_DIR "${SRC_DIR}/libnoise/source"
)
FetchContent_Populate(
       zlib
       URL https://www.zlib.net/zlib-1.2.12.tar.gz
       #URL_MD5 aad0327fad5a183aaeb9ae4b9bd97ef0
       SOURCE_DIR "${SRC_DIR}/zlib/source"
)
FetchContent_Populate(
       openal-soft
       URL https://github.com/kcat/openal-soft/archive/openal-soft-1.20.1.tar.gz
       #URL_MD5 aad0327fad5a183aaeb9ae4b9bd97ef0
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
       #URL_MD5 aad0327fad5a183aaeb9ae4b9bd97ef0
       SOURCE_DIR "${SRC_DIR}/libpng/source"
)