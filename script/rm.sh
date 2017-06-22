#!/bin/sh
TRASH_DIR="/Users/zhouxiang/.terminal_trash"  
  
STAMP=`date +%Y-%m-%d`  
if [ ! -d "$TRASH_DIR/$STAMP" ]; then
  mkdir -p "$TRASH_DIR/$STAMP"
fi
for i in $*; do  
    fileName=`basename $i`  
    mv $i $TRASH_DIR/$STAMP/$fileName  
done  
echo 已移动到终端垃圾箱!
