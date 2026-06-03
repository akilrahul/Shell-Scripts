#!/bin/bash
set -x
echo " To delete the list of files , enter the number of days before the file was created "
read days
file=$(find . -type f -mtime +$days)
find . -type f -mtime +$days -delete
echo " These are the list of deleted files $file: "
