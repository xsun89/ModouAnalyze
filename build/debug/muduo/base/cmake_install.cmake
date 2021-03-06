# Install script for directory: /home/xsun/programming/cppCourse/ModouAnalyze/jmuduo/muduo/base

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/xsun/programming/cppCourse/ModouAnalyze/build/debug-install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "debug")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/xsun/programming/cppCourse/ModouAnalyze/build/debug/lib/libmuduo_base.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/muduo/base" TYPE FILE FILES
    "/home/xsun/programming/cppCourse/ModouAnalyze/jmuduo/muduo/base/CountDownLatch.h"
    "/home/xsun/programming/cppCourse/ModouAnalyze/jmuduo/muduo/base/Condition.h"
    "/home/xsun/programming/cppCourse/ModouAnalyze/jmuduo/muduo/base/Atomic.h"
    "/home/xsun/programming/cppCourse/ModouAnalyze/jmuduo/muduo/base/Mutex.h"
    "/home/xsun/programming/cppCourse/ModouAnalyze/jmuduo/muduo/base/Types.h"
    "/home/xsun/programming/cppCourse/ModouAnalyze/jmuduo/muduo/base/Thread.h"
    "/home/xsun/programming/cppCourse/ModouAnalyze/jmuduo/muduo/base/Exception.h"
    "/home/xsun/programming/cppCourse/ModouAnalyze/jmuduo/muduo/base/Timestamp.h"
    "/home/xsun/programming/cppCourse/ModouAnalyze/jmuduo/muduo/base/copyable.h"
    "/home/xsun/programming/cppCourse/ModouAnalyze/jmuduo/muduo/base/CurrentThread.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/xsun/programming/cppCourse/ModouAnalyze/build/debug/muduo/base/tests/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

