#!/usr/bin/env node

// Custom build script for Vercel deployment
import { execSync } from 'child_process';
import { existsSync, mkdirSync } from 'fs';

console.log('🏫 Building Victoria School Tech Help Desk for Vercel...');

try {
  // Ensure output directories exist
  if (!existsSync('dist')) {
    mkdirSync('dist', { recursive: true });
  }
  
  if (!existsSync('dist/public')) {
    mkdirSync('dist/public', { recursive: true });
  }

  console.log('📦 Building frontend with Vite...');
  // Build the frontend using Vite (this reads vite.config.ts)
  execSync('vite build', { 
    stdio: 'inherit',
    env: { ...process.env, NODE_ENV: 'production' }
  });

  console.log('🔧 Building backend with esbuild...');
  // Build the backend
  execSync('esbuild server/index.ts --platform=node --packages=external --bundle --format=esm --outdir=dist --target=node18', { 
    stdio: 'inherit' 
  });

  console.log('✅ Build completed successfully!');
  console.log('📁 Frontend built to: dist/public/');
  console.log('📁 Backend built to: dist/index.js');
  
} catch (error) {
  console.error('❌ Build failed:', error.message);
  process.exit(1);
}