#!/bin/bash

# Script 3: Disk and Permission Auditor

# Author: Nandini Lodha

# Course: Open Source Software

STUDENT_NAME="Nandini Lodha"

echo "===================================="
echo " Disk & Permission Auditor - $STUDENT_NAME"
echo "===================================="

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"
do
if [ -d "$DIR" ]; then
PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

```
    echo "$DIR => Permissions: $PERMS | Size: $SIZE"
else
    echo "$DIR does not exist on this system"
fi
```

done

echo "----------------------"
echo "Firefox Config Check"
echo "----------------------"

# Check Firefox config directory

FIREFOX_DIR="$HOME/.mozilla/firefox"

if [ -d "$FIREFOX_DIR" ]; then
PERMS=$(ls -ld $FIREFOX_DIR | awk '{print $1, $3, $4}')
echo "Firefox config directory exists"
echo "Permissions: $PERMS"
else
echo "Firefox config directory does not exist"
fi
