# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/media/wish/Disk/esp/esp-idf/components/bootloader/subproject"
  "/media/wish/Disk/esp/camera_example/build/bootloader"
  "/media/wish/Disk/esp/camera_example/build/bootloader-prefix"
  "/media/wish/Disk/esp/camera_example/build/bootloader-prefix/tmp"
  "/media/wish/Disk/esp/camera_example/build/bootloader-prefix/src/bootloader-stamp"
  "/media/wish/Disk/esp/camera_example/build/bootloader-prefix/src"
  "/media/wish/Disk/esp/camera_example/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/media/wish/Disk/esp/camera_example/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/media/wish/Disk/esp/camera_example/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
