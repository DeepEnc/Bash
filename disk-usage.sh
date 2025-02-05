#!/bin/bash

THRESHOLD=80
USAGE=$(df / | tail -1 | awk '{print $5}'| sed 's/%//' )

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "$USAGE% is greater than $THRESHOLD%"
else
    echo "Disk Usage is fine. Current Disk Usage: $USAGE"
fi


