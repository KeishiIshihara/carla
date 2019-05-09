# Install script for directory: /home/aisl/carla/LibCarla/cmake/client

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/aisl/carla/PythonAPI/dependencies")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Client")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/aisl/carla/Build/rpclib-2.2.1-libstdcxx-install/include/rpc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/home/aisl/carla/Build/rpclib-2.2.1-libstdcxx-install/lib/librpc.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/aisl/carla/Build/boost-1.67.0-install/include/boost")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES
    "/home/aisl/carla/Build/boost-1.67.0-install/lib/libboost_numpy27.a"
    "/home/aisl/carla/Build/boost-1.67.0-install/lib/libboost_numpy27.so"
    "/home/aisl/carla/Build/boost-1.67.0-install/lib/libboost_numpy27.so.1.67.0"
    "/home/aisl/carla/Build/boost-1.67.0-install/lib/libboost_python27.a"
    "/home/aisl/carla/Build/boost-1.67.0-install/lib/libboost_python27.so"
    "/home/aisl/carla/Build/boost-1.67.0-install/lib/libboost_python27.so.1.67.0"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/carla" TYPE FILE FILES
    "/home/aisl/carla/LibCarla/cmake/../source/carla/Debug.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/Iterator.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/Logging.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/NonCopyable.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/StopWatch.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/StringUtil.cpp"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/StringUtil.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/ThreadGroup.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/Time.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/Version.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/carla/client" TYPE FILE FILES
    "/home/aisl/carla/LibCarla/cmake/../source/carla/client/Actor.cpp"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/client/Actor.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/client/ActorAttribute.cpp"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/client/ActorAttribute.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/client/ActorBlueprint.cpp"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/client/ActorBlueprint.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/client/BlueprintLibrary.cpp"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/client/BlueprintLibrary.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/client/Client.cpp"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/client/Client.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/client/Color.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/client/Control.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/client/Image.cpp"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/client/Image.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/client/Memory.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/client/Sensor.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/client/Transform.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/client/Vehicle.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/client/World.cpp"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/client/World.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/carla/rpc" TYPE FILE FILES
    "/home/aisl/carla/LibCarla/cmake/../source/carla/rpc/Actor.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/rpc/ActorAttribute.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/rpc/ActorAttributeType.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/rpc/ActorDefinition.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/rpc/ActorDescription.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/rpc/Client.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/rpc/Location.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/rpc/MsgPack.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/rpc/Server.cpp"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/rpc/Server.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/rpc/String.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/rpc/Transform.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/rpc/VehicleControl.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/carla/streaming" TYPE FILE FILES
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/Client.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/EndPoint.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/Message.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/Server.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/Stream.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/Token.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/carla/streaming/detail" TYPE FILE FILES
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/detail/Dispatcher.cpp"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/detail/Dispatcher.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/detail/HashableClient.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/detail/Session.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/detail/StreamState.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/detail/Token.cpp"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/detail/Token.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/detail/Types.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/carla/streaming/detail/tcp" TYPE FILE FILES
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/detail/tcp/Client.cpp"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/detail/tcp/Client.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/detail/tcp/Server.cpp"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/detail/tcp/Server.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/detail/tcp/ServerSession.cpp"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/detail/tcp/ServerSession.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/carla/streaming/low_level" TYPE FILE FILES
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/low_level/Client.h"
    "/home/aisl/carla/LibCarla/cmake/../source/carla/streaming/low_level/Server.h"
    )
endif()

