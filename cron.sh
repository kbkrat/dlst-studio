#! /bin/bash
log=~/www/dhc-studio/cron.log
d=$(date +%Y-%m-%d-%T)
echo "Commit for $d" > $log
git add . 
git commit -m "cron job for $d" &> $log
echo "hello" > $log 
git push origin master