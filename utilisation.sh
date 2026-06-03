#!/bin/bash
set -x
Diskspace=$(df -h / | tail -1 | awk '{print $(NF-1)}' | sed 's/%//')
if [ "$Diskspace" -ge 70 ]
then
echo "Disk storage is more than 70% please take immediate action"
| mail -s "Disk storage alert: $Diskspace%" -c akilvenugopal333@gmail.com
fi


