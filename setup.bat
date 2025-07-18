@echo off
title Victoria School Tech Help Desk - Setup

echo.
echo 🏫 Victoria School Foundation - Tech Help Desk Setup
echo ==================================================
echo.

REM Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js is not installed. Please install Node.js 18+ first.
    echo    Download from: https://nodejs.org/
    pause
    exit /b 1
)

REM Show Node.js version
echo ✅ Node.js is installed
node --version

REM Install dependencies
echo.
echo 📦 Installing dependencies...
call npm install

if %errorlevel% neq 0 (
    echo ❌ Failed to install dependencies
    pause
    exit /b 1
)

echo ✅ Dependencies installed successfully!
echo.

REM Choose setup type
echo Choose setup type:
echo 1) Development (with hot reload)
echo 2) Production build
set /p choice=Enter choice (1 or 2): 

if "%choice%"=="1" (
    echo.
    echo 🚀 Starting development server...
    echo    Access the app at: http://localhost:5000
    echo.
    call npm run dev
) else if "%choice%"=="2" (
    echo.
    echo 🔨 Building for production...
    call npm run build
    
    if %errorlevel% equ 0 (
        echo ✅ Build completed successfully!
        echo 🚀 Starting production server...
        echo    Access the app at: http://localhost:5000
        echo.
        call npm start
    ) else (
        echo ❌ Build failed
        pause
        exit /b 1
    )
) else (
    echo ❌ Invalid choice
    pause
    exit /b 1
)

pause