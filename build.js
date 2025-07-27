#!/usr/bin/env node

// Simple build script for Vercel deployment
import { execSync } from 'child_process';
import { existsSync, mkdirSync } from 'fs';
import path from 'path';

console.log('🏫 Building Victoria School Tech Help Desk...');

try {
  // Ensure dist directory exists
  if (!existsSync('dist')) {
    mkdirSync('dist');
  }

  // Build the frontend
  console.log('📦 Building frontend...');
  execSync('vite build', { stdio: 'inherit' });

  // Build the backend
  console.log('🔧 Building backend...');
  execSync('esbuild server/index.ts --platform=node --packages=external --bundle --format=esm --outdir=dist', { stdio: 'inherit' });

  console.log('✅ Build completed successfully!');
  
} catch (error) {
  console.error('❌ Build failed:', error.message);
  process.exit(1);
}