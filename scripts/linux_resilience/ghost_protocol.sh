#!/bin/bash
WORKSPACE="/home/wxc/ExtFiles/AI/PulsareonThinker"
PULSE_FILE="$WORKSPACE/data/state/pulse"
THRESHOLD=600 # 10 minutes in seconds

if [ -f "$PULSE_FILE" ]; then
    LAST_PULSE=$(cat "$PULSE_FILE")
    NOW_MS=$(date +%s%3N)
    # 计算差值（秒）
    DIFF=$(( (NOW_MS - LAST_PULSE) / 1000 ))
    
    if [ $DIFF -gt $THRESHOLD ]; then
        echo "$(date): [CRITICAL] SYSTEM HANG DETECTED ($DIFF s). FORCING REBOOT." >> "$WORKSPACE/logs/ghost.log"
        pkill -9 -f openclaw
        rm -f "$WORKSPACE/.git/index.lock"
        openclaw gateway start
    fi
fi
