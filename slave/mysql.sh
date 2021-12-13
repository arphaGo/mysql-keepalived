#!/bin/bash

counter=$(netstat -na|grep "LISTEN"|grep "3306"|wc -l)
if [ "${counter}" == 0 ];then
    systemctl stop keepalived
fi
