# ensure cmake features we need
CMAKE_MINIMUM_REQUIRED(VERSION 3.1)
project(build_wrapper)

set(OUT_DIR "${CMAKE_SOURCE_DIR}/out/${ANDROID_ABI}-${CMAKE_BUILD_TYPE}/")

SET(RUNTIME_OUTPUT_DIRECTORY "${OUT_DIR}")
SET(LIBRARY_OUTPUT_DIRECTORY "${OUT_DIR}")
SET(ARCHIVE_OUTPUT_DIRECTORY "${OUT_DIR}")
SET(EXECUTABLE_OUTPUT_PATH ${OUT_DIR})
SET(LIBRARY_OUTPUT_PATH ${OUT_DIR})

add_subdirectory(source)

function(create_symlink)
    message("No")
endfunction()