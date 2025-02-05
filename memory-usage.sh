# #!/bin/bash
THRESHOLD=2
USAGE=$(free -g | awk '/^Mem:/ {print $3}')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "$USAGE is greater than $THRESHOLD"
else
    echo "Memory Usage is fine. Current Memory Usage: $USAGE"
fi


#!/bin/bash
THRESHOLD=2
USAGE=$(free -g | awk 'NR==2 {print $3}')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "$USAGE is greater than $THRESHOLD"
else
    echo "Memory Usage is fine. Current Memory Usage: $USAGE"
fi

