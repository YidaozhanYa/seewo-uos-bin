#!/bin/bash
export DISPLAY=:0
my_user_name=`who | cut -d' ' -f1 | sort | uniq | grep -v "root"`
echo "${my_user_name}"
runuser -u ${my_user_name} -- "/opt/apps/com.seewo.seewoservice/files/seewoassistant/SeewoServiceAssistant-linux-x64/SeewoServiceAssistant" &
ps -aux | grep seewoservice &
