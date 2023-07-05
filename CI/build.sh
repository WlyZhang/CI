#!/bin/sh
# unity app path
UNITY_PATH="D:\Installed\Unity\2020.3.36f1c1\Editor\Unity.exe"
# project path
PROJ_PATH="C:\Users\a\Desktop\Builder"
UNITY_LOG_PATH="C:\Users\a\Desktop\Builder\exe\BatunityApk_log.txt"

echo "============== Unity Build APK Begin =============="
"$UNITY_PATH" -projectPath $PROJ_PATH -executeMethod BuilderApk.BuildMyAndroidApk -logFile $UNITY_LOG_PATH -batchMode -quit
 
echo "============== Unity Build APK Finish =============="
exec /bin/bash 
