#!/bin/bash

# Victoria School Tech Help Desk - Quick Setup Script
echo "🏫 Victoria School Foundation - Tech Help Desk Setup"
echo "=================================================="

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js 18+ first."
    echo "   Download from: https://nodejs.org/"
    exit 1
fi

# Check Node.js version
NODE_VERSION=$(node -v | cut -d'v' -f2)
echo "✅ Node.js version: $NODE_VERSION"

# Install dependencies
echo "📦 Installing dependencies..."
npm install

if [ $? -ne 0 ]; then
    echo "❌ Failed to install dependencies"
    exit 1
fi

echo "✅ Dependencies installed successfully!"

# Check if we're in development or production
echo ""
echo "Choose setup type:"
echo "1) Development (with hot reload)"
echo "2) Production build"
read -p "Enter choice (1 or 2): " choice

case $choice in
    1)
        echo "🚀 Starting development server..."
        echo "   Access the app at: http://localhost:5000"
        npm run dev
        ;;
    2)
        echo "🔨 Building for production..."
        npm run build
        
        if [ $? -eq 0 ]; then
            echo "✅ Build completed successfully!"
            echo "🚀 Starting production server..."
            echo "   Access the app at: http://localhost:5000"
            npm start
        else
            echo "❌ Build failed"
            exit 1
        fi
        ;;
    *)
        echo "❌ Invalid choice"
        exit 1
        ;;
esac