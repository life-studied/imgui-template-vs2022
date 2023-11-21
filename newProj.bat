@echo off
setlocal enabledelayedexpansion

:: 检查是否提供了目标路径作为参数
if "%~1"=="" (
    echo 请提供目标路径作为参数。
    exit /b
)

:: 源目录
set "sourceDir=%cd%"
:: 目标目录
set "destinationDir=%~1"

:: 创建目标目录（如果不存在）
if not exist "!destinationDir!" (
    mkdir "!destinationDir!"
)

:: 复制 GLEW 文件夹
robocopy "!sourceDir!\glew" "!destinationDir!\glew" /e

:: 复制 GLFW 文件夹
robocopy "!sourceDir!\glfw" "!destinationDir!\glfw" /e

echo finish copy: "!destinationDir!"
pause
