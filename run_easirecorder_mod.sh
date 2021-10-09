#!/bin/bash

install_root_dir=/opt/apps/com.seewo.easirecorder

#检查桌面是否有快捷方式如果没有则拷贝快捷方式
# Removed because of a bug
#if [ -f "$HOME/Desktop/EasiRecorder.desktop" ]
#then
#    rm -r "$HOME/Desktop/EasiRecorder.desktop"
#fi
#cp "$install_root_dir/entries/applications/EasiRecorder.desktop" "$HOME/Desktop/"

#启动程序
export LD_LIBRARY_PATH=$install_root_dir/files/bin/lib:$install_root_dir/files/deps:$LD_LIBRARY_PATH
export DISPLAY=:0
nohup $install_root_dir/files/bin/EasiRecorder_UOS >> /dev/null 2>&1 &
exit 0
