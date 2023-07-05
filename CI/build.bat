@echo on

set UNITY_PATH="D:\Installed\Unity\2020.3.36f1c1\Editor\Unity.exe"
set UNITY_PROJECT_PATH="C:\Users\a\Desktop\Builder"
set UNITY_METHOD_NAME=BuilderApk.BuildMyAndroidApk
set UNITY_LOG_PATH="C:\Users\a\Desktop\Builder\exe\BatunityApk_log.txt"

echo "============== Unity Build APK Begin =============="
%UNITY_PATH% -quit -batchmode -logFile %UNITY_LOG_PATH% -projectPath %UNITY_PROJECT_PATH% -executeMethod %UNITY_METHOD_NAME% 
echo "============== Unity Build APK Finish =============="
pause
