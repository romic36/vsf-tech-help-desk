# Victoria School Tech Help Desk - Deployment Guide

## Prerequisites

Before deploying, ensure you have:
- Node.js (version 18 or higher)
- Git (for version control)
- A code editor (VS Code recommended)

## Method 1: Local Development Setup

### Step 1: Download the Project
1. In Replit, click the three dots menu (⋮) → "Download as ZIP"
2. Extract the ZIP file to your desired location
3. Open terminal/command prompt in the project folder

### Step 2: Install Dependencies
```bash
npm install
```

### Step 3: Run Development Server
```bash
npm run dev
```

### Step 4: Access the Application
Open your browser and go to: `http://localhost:5000`

## Method 2: Vercel Deployment (Recommended)

### Step 1: Prepare for Deployment
1. Push your code to GitHub:
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/yourusername/vsf-tech-help.git
   git push -u origin main
   ```

### Step 2: Deploy to Vercel
1. Go to [vercel.com](https://vercel.com)
2. Sign up/Login with GitHub
3. Click "New Project"
4. Import your repository
5. Configure:
   - Build Command: `npm run build`
   - Output Directory: `dist`
   - Install Command: `npm install`

### Step 3: Environment Variables (Optional)
If you want Google OAuth to work:
1. Go to [Google Cloud Console](https://console.cloud.google.com)
2. Create a new project or select existing
3. Enable Google+ API
4. Create OAuth 2.0 credentials
5. Add to Vercel environment variables:
   - `VITE_GOOGLE_CLIENT_ID=your_client_id`

## Method 3: Netlify Deployment

### Step 1: Build the Project
```bash
npm run build
```

### Step 2: Deploy to Netlify
1. Go to [netlify.com](https://netlify.com)
2. Sign up/Login
3. Drag and drop the `dist` folder
4. Or connect your GitHub repository

### Configuration:
- Build command: `npm run build`
- Publish directory: `dist`
- Node version: 18

## Method 4: Railway Deployment

### Step 1: Prepare Railway Config
Create `railway.json`:
```json
{
  "build": {
    "builder": "NIXPACKS"
  },
  "deploy": {
    "startCommand": "npm start",
    "restartPolicyType": "ON_FAILURE"
  }
}
```

### Step 2: Deploy
1. Install Railway CLI: `npm install -g @railway/cli`
2. Login: `railway login`
3. Deploy: `railway up`

## Method 5: Production Build (Any Server)

### Step 1: Build for Production
```bash
npm run build
```

### Step 2: Run Production Server
```bash
npm start
```

### Step 3: Configure Web Server
For Apache/Nginx, serve the `dist` folder and proxy API calls to your Node.js server.

## Google OAuth Setup (Optional)

### Step 1: Google Cloud Console
1. Go to [Google Cloud Console](https://console.cloud.google.com)
2. Create new project: "VSF Tech Help Desk"
3. Enable Google+ API

### Step 2: Create OAuth Credentials
1. Go to "Credentials" → "Create Credentials" → "OAuth 2.0 Client ID"
2. Application type: "Web application"
3. Authorized origins: Add your domain
4. Authorized redirect URIs: Add your domain

### Step 3: Configure Environment
Add to your environment variables:
```
VITE_GOOGLE_CLIENT_ID=your_google_client_id
```

## Database Setup (Optional)

### Current Setup
- Uses in-memory storage (resets on restart)
- Perfect for testing and development

### For Production (PostgreSQL)
1. Create PostgreSQL database
2. Update `DATABASE_URL` environment variable
3. Run: `npm run db:push`

## Domain Setup

### Custom Domain (Vercel/Netlify)
1. Purchase domain (e.g., help.vsf.edu.ph)
2. Add domain in platform settings
3. Configure DNS records

### SSL Certificate
- Vercel/Netlify: Automatic SSL
- Self-hosted: Use Let's Encrypt

## Monitoring and Maintenance

### Health Checks
- Monitor `/api/health` endpoint
- Set up uptime monitoring

### Logs
- Check application logs regularly
- Monitor error rates

### Updates
```bash
git pull origin main
npm install
npm run build
npm start
```

## Security Considerations

### Production Checklist
- [ ] Enable HTTPS
- [ ] Set up proper CORS
- [ ] Configure CSP headers
- [ ] Regular security updates
- [ ] Monitor for vulnerabilities

### Environment Variables
Keep sensitive data in environment variables:
- Database credentials
- OAuth secrets
- API keys

## Support and Troubleshooting

### Common Issues
1. **Port already in use**: Change port in configuration
2. **Build fails**: Check Node.js version
3. **OAuth not working**: Verify client ID and domains

### Getting Help
- Check application logs
- Review deployment platform documentation
- Contact Victoria School Foundation IT support

## Performance Optimization

### Production Optimizations
- Enable gzip compression
- Use CDN for static assets
- Implement caching strategies
- Monitor performance metrics

### Scaling
- Use load balancers for high traffic
- Implement database clustering
- Consider containerization with Docker

---

**Victoria School Foundation - Tech Help Desk**
*Tradisyonal na galing, Makabagong pag-iisip*