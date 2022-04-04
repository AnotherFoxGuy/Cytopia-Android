# ensure cmake features we need
CMAKE_MINIMUM_REQUIRED(VERSION 3.1)

project(build_wrapper)

## Set some helper variables.
#string(TOLOWER "${CMAKE_SYSTEM_NAME}" targetSystem)
#set(projectDir "${CMAKE_CURRENT_LIST_DIR}")
#set(sourceDir "${projectDir}/source")
#set(targetName "SimpleExample")
#set(binDir "${projectDir}/bin")
#
## Define executable output dir.
#set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${binDir}/${targetSystem}")
#set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE "${binDir}/${targetSystem}")
#set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_MINSIZEREL "${binDir}/${targetSystem}")
#set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG "${binDir}/${targetSystem}_debug")

#find_library(OpenGLES2_LIBRARY GLESv2 REQUIRED)
#find_library(OpenGLES3_LIBRARY GLESv3 REQUIRED)
find_library(ANDROID_LOG_LIBRARY log REQUIRED)
find_library(ANDROID_LIBRARY_LIBRARY android REQUIRED)
find_library(zlib z)

string(TOLOWER ${CMAKE_BUILD_TYPE} ANDROID_BUILD_DIR)

##SDL2
# build/SDL2/intermediates/cmake/debug/obj/x86/libSDL2.so
set(DISTRIBUTION_DIR ${CMAKE_SOURCE_DIR}/../build/SDL2/intermediates/cmake/)
set(SDL2_LOCATION ${DISTRIBUTION_DIR}/${ANDROID_BUILD_DIR}/obj/${ANDROID_ABI}/libSDL2.so)
add_library(SDL::SDL SHARED IMPORTED)
set_target_properties(SDL::SDL PROPERTIES IMPORTED_LOCATION ${SDL2_LOCATION})

## SDL2_image
set(SDL2_IMAGE_LOCATION ${DISTRIBUTION_DIR}/${ANDROID_BUILD_DIR}/obj/${ANDROID_ABI}/libSDL2_image.so)
add_library(SDL::SDL_image SHARED IMPORTED)
set_target_properties(SDL::SDL_image PROPERTIES IMPORTED_LOCATION ${SDL2_IMAGE_LOCATION})

## SDL2_ttf
set(SDL2_TTF_LOCATION ${DISTRIBUTION_DIR}/${ANDROID_BUILD_DIR}/obj/${ANDROID_ABI}/libSDL2_ttf.so)
add_library(SDL::TTF SHARED IMPORTED)
set_target_properties(SDL::TTF PROPERTIES IMPORTED_LOCATION ${SDL2_TTF_LOCATION})

# libnoise
# build/libnoise/intermediates/cmake/release/obj/x86/libnoise.so
set(NOISE_DISTRIBUTION_DIR ${CMAKE_SOURCE_DIR}/../build/libnoise/intermediates/cmake/)
set(LIBNOISE_LOCATION ${NOISE_DISTRIBUTION_DIR}/${ANDROID_BUILD_DIR}/obj/${ANDROID_ABI}/libnoise.so)
add_library(LibNoise::LibNoise SHARED IMPORTED)
set_target_properties(LibNoise::LibNoise PROPERTIES IMPORTED_LOCATION ${LIBNOISE_LOCATION})

# openal
set(OPENAL_DISTRIBUTION_DIR ${CMAKE_SOURCE_DIR}/platforms/android/build/openal-soft/intermediates/cmake)
set(OPENAL_LOCATION ${OPENAL_DISTRIBUTION_DIR}/${ANDROID_BUILD_DIR}/obj/${ANDROID_ABI}/libopenal.so)
add_library(OPENAL SHARED IMPORTED)
set_target_properties(OPENAL PROPERTIES IMPORTED_LOCATION ${OPENAL_LOCATION})

# ogg
set(LIBOGG_DISTRIBUTION_DIR ${CMAKE_SOURCE_DIR}/platforms/android/build/libogg/intermediates/cmake)
set(LIBOGG_LOCATION ${LIBOGG_DISTRIBUTION_DIR}/${ANDROID_BUILD_DIR}/obj/${ANDROID_ABI}/libogg.so)
add_library(LIBOGG SHARED IMPORTED)
set_target_properties(LIBOGG PROPERTIES IMPORTED_LOCATION ${LIBOGG_LOCATION})

# zlib
# build/zlib/intermediates/cmake/release/obj/x86/libz.so
set(ZLIB_DISTRIBUTION_DIR ${CMAKE_SOURCE_DIR}/../build/zlib/intermediates/cmake/)
set(ZLIB_LOCATION ${ZLIB_DISTRIBUTION_DIR}/${ANDROID_BUILD_DIR}/obj/${ANDROID_ABI}/libz.so)
add_library(ZLIB::ZLIB SHARED IMPORTED)
set_target_properties(ZLIB::ZLIB PROPERTIES IMPORTED_LOCATION ${ZLIB_LOCATION})

# libpng
# ./build/libpng/intermediates/cmake/debug/obj/x86/libpng.so
set(LIBPNG_DISTRIBUTION_DIR ${CMAKE_SOURCE_DIR}/platforms/android/build/libpng/intermediates/cmake)
set(LIBPNG_LOCATION ${LIBPNG_DISTRIBUTION_DIR}/${ANDROID_BUILD_DIR}/obj/${ANDROID_ABI}/libpng.so)
add_library(LIBPNG::LIBPNG SHARED IMPORTED)
set_target_properties(LIBPNG::LIBPNG PROPERTIES IMPORTED_LOCATION ${LIBPNG_LOCATION})

# vorbis
# ./build/libvorbis/intermediates/cmake/debug/obj/x86/libvorbis.so
set(LIBVORBIS_DISTRIBUTION_DIR ${CMAKE_SOURCE_DIR}/platforms/android/build/libvorbis/intermediates/cmake)
set(LIBVORBIS_LOCATION ${LIBVORBIS_DISTRIBUTION_DIR}/${ANDROID_BUILD_DIR}/obj/${ANDROID_ABI}/libvorbis.so)
add_library(LIBVORBIS SHARED IMPORTED)
set_target_properties(LIBVORBIS PROPERTIES IMPORTED_LOCATION ${LIBVORBIS_LOCATION})

set(LIBVORBISFILE_LOCATION ${LIBVORBIS_DISTRIBUTION_DIR}/${ANDROID_BUILD_DIR}/obj/${ANDROID_ABI}/libvorbisfile.so)
add_library(LIBVORBISFILE SHARED IMPORTED)
set_target_properties(LIBVORBISFILE PROPERTIES IMPORTED_LOCATION ${LIBVORBISFILE_LOCATION})
# Joysticks were causing trouble on android.
add_definitions(-DSDL_JOYSTICK=0)