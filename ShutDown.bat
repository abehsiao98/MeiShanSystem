@echo off

REM 關閉 React (3000)
for /f "tokens=5" %%a in ('netstat -ano ^| find ":3000" ^| find "LISTENING"') do (
  taskkill /F /PID %%a
)

REM 關閉 .NET API (5000)
for /f "tokens=5" %%a in ('netstat -ano ^| find ":5000" ^| find "LISTENING"') do (
  taskkill /F /PID %%a
)

exit