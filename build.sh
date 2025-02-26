#!/bin/bash
NDK_PATH=~/android-ndk-r25c
SYSROOT=$NDK_PATH/toolchains/llvm/prebuilt/linux-x86_64/sysroot
CC=$NDK_PATH/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android21-clang++

$CC my_daemon.cpp -o my_daemon -llog --sysroot=$SYSROOT

adb push my_daemon /system/bin/
adb shell chmod 755 /system/bin/my_daemon
adb shell /system/bin/my_daemon