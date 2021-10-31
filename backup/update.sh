#!/usr/bin/env bash
# 强制更新
if [ -s /jd ];then
  echo "========= 检查到V4环境，开始强制更新 ========="
  cd /jd/scripts/ && git fetch --all; git reset --hard origin/master; git pull && jup scripts
elif [ -s /ql ];then
  echo "========= 检查到青龙环境，开始强制更新 ========="
  cd /ql/repo/utterliar2_allinone/ && git fetch --all; git reset --hard origin/master; git pull && ql repo https://github.com/utterliar2/allinone.git "jd_" "utils|backup" "^jd[^_]|USER|^TS|utils"
else
  echo "========= 环境未知，请自行更新 ========="
fi
