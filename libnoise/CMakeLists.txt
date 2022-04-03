# ensure cmake features we need
CMAKE_MINIMUM_REQUIRED(VERSION 3.1)
include(FetchContent)

project(build_wrapper)

set(OUT_DIR "${CMAKE_SOURCE_DIR}/out")
set(FETCHCONTENT_BASE_DIR "${CMAKE_SOURCE_DIR}/out/_deps")

SET(RUNTIME_OUTPUT_DIRECTORY "${OUT_DIR}")
SET(LIBRARY_OUTPUT_DIRECTORY "${OUT_DIR}")
SET(ARCHIVE_OUTPUT_DIRECTORY "${OUT_DIR}")
SET(EXECUTABLE_OUTPUT_PATH ${OUT_DIR})
SET(LIBRARY_OUTPUT_PATH ${OUT_DIR})

FetchContent_Declare(
        freetype
        GIT_REPOSITORY https://github.com/freetype/freetype.git
)
FetchContent_MakeAvailable(SDL2 SDL_image SDL2_ttf)