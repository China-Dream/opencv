# Install script for directory: D:/Projects2/opencv/source/data

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "D:/Projects2/opencv/build/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libs")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/haarcascades" TYPE FILE FILES
    "D:/Projects2/opencv/source/data/haarcascades/haarcascade_eye.xml"
    "D:/Projects2/opencv/source/data/haarcascades/haarcascade_eye_tree_eyeglasses.xml"
    "D:/Projects2/opencv/source/data/haarcascades/haarcascade_frontalcatface.xml"
    "D:/Projects2/opencv/source/data/haarcascades/haarcascade_frontalcatface_extended.xml"
    "D:/Projects2/opencv/source/data/haarcascades/haarcascade_frontalface_alt.xml"
    "D:/Projects2/opencv/source/data/haarcascades/haarcascade_frontalface_alt2.xml"
    "D:/Projects2/opencv/source/data/haarcascades/haarcascade_frontalface_alt_tree.xml"
    "D:/Projects2/opencv/source/data/haarcascades/haarcascade_frontalface_default.xml"
    "D:/Projects2/opencv/source/data/haarcascades/haarcascade_fullbody.xml"
    "D:/Projects2/opencv/source/data/haarcascades/haarcascade_lefteye_2splits.xml"
    "D:/Projects2/opencv/source/data/haarcascades/haarcascade_licence_plate_rus_16stages.xml"
    "D:/Projects2/opencv/source/data/haarcascades/haarcascade_lowerbody.xml"
    "D:/Projects2/opencv/source/data/haarcascades/haarcascade_profileface.xml"
    "D:/Projects2/opencv/source/data/haarcascades/haarcascade_righteye_2splits.xml"
    "D:/Projects2/opencv/source/data/haarcascades/haarcascade_russian_plate_number.xml"
    "D:/Projects2/opencv/source/data/haarcascades/haarcascade_smile.xml"
    "D:/Projects2/opencv/source/data/haarcascades/haarcascade_upperbody.xml"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libs")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/lbpcascades" TYPE FILE FILES
    "D:/Projects2/opencv/source/data/lbpcascades/lbpcascade_frontalcatface.xml"
    "D:/Projects2/opencv/source/data/lbpcascades/lbpcascade_frontalface.xml"
    "D:/Projects2/opencv/source/data/lbpcascades/lbpcascade_frontalface_improved.xml"
    "D:/Projects2/opencv/source/data/lbpcascades/lbpcascade_profileface.xml"
    "D:/Projects2/opencv/source/data/lbpcascades/lbpcascade_silverware.xml"
    )
endif()

