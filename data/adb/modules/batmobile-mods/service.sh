#!/system/bin/sh

{
    echo "$(/data/xbin/logdate) Waiting for boot completion"
    while [ "$(getprop sys.boot_completed)" != "1" ]
        do sleep 1
        done
    sleep 5
    export PATH=$PATH:/data/xbin
    /data/bin/bash /data/xbin/post-boot autorun | /data/xbin/set-log
} &> /data/media/0/lab/android/log/post-boot.log
