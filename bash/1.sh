#!/bin/bash

timeframe=$1
file=$2

while [ "$timeframe" -ge 0 ];do
        loadavg=$(cat /proc/loadavg)
        dt=$(date +%Y-%H-%M-%S)
        echo "$dt $loadavg" >> ${file} && echo "$dt $loadavg"
        ((timeframe--))
        sleep 1
done
