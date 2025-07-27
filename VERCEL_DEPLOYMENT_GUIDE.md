# Victoria School Tech Help Desk - Vercel Deployment Guide

## ✅ What You Get with Vercel Free Tier:
- **100% Free** - No monthly subscription costs
- **Custom Domain** - Use help.vsf.edu.ph or similar
- **SSL Certificate** - Automatic HTTPS security
- **Global CDN** - Fast loading worldwide
- **100GB Bandwidth** - More than enough for school use
- **Automatic Deployments** - Updates when you push code

## 🚀 Step-by-Step Deployment Process

### Step 1: Download Your Project
1. In Replit, click the **three dots menu (⋮)** → **"Download as ZIP"**
2. Extract the ZIP file to your computer
3. You should have a folder with all your project files

### Step 2: Set Up GitHub Repository
1. Go to [GitHub.com](https://github.com) and create account (if needed)
2. Click **"New repository"**
3. Name it: `vsf-tech-help-desk`
4. Make it **Public** (required for free tier)
5. Click **"Create repository"**

### Step 3: Upload Your Code to GitHub
#### Option A: GitHub Web Interface (Easiest)
1. In your new repository, click **"uploading an existing file"**
2. Drag all your project files into the upload area
3. Commit message: "Initial deployment of VSF Tech Help Desk"
4. Click **"Commit changes"**

#### Option B: Command Line (if you prefer)
```bash
cd your-project-folder
git init
git add .
git commit -m "Initial deployment of VSF Tech Help Desk"
git branch -M main
git remote add origin https://github.com/yourusername/vsf-tech-help-desk.git
git push -u origin main
```

### Step 4: Deploy to Vercel
1. Go to [Vercel.com](https://vercel.com)
2. Click **"Sign up"** and choose **"Continue with GitHub"**
3. Click **"New Project"**
4. Find your `vsf-tech-help-desk` repository
5. Click **"Import"**

### Step 5: Configure Deployment Settings
**Build Settings:**
- Build Command: `npm run build`
- Output Directory: `dist`
- Install Command: `npm install`

**Environment Variables (Optional):**
- Add `VITE_GOOGLE_CLIENT_ID` if you want Google OAuth
- Add `NODE_ENV=production`

### Step 6: Deploy!
1. Click **"Deploy"**
2. Wait 2-3 minutes for build to complete
3. You'll get a URL like: `https://vsf-tech-help-desk.vercel.app`

### Step 7: Set Up Custom Domain (Optional)
1. In Vercel dashboard, go to your project
2. Click **"Settings"** → **"Domains"**
3. Add your domain: `help.vsf.edu.ph`
4. Follow DNS configuration instructions

## 🔧 Project Configuration Files

I've already created these files for you:

### `vercel.json` - Vercel Configuration
```json
{
  "version": 2,
  "builds": [
    {
      "src": "server/index.ts",
      "use": "@vercel/node"
    },
    {
      "src": "package.json",
      "use": "@vercel/static-build",
      "config": {
        "distDir": "dist/public"
      }
    }
  ],
  "routes": [
    {
      "src": "/api/(.*)",
      "dest": "/server/index.ts"
    },
    {
      "src": "/(.*)",
      "dest": "/dist/public/$1"
    }
  ]
}
```

## 📋 Pre-Deployment Checklist

✅ **Files Ready:**
- [x] vercel.json configuration
- [x] package.json with correct scripts
- [x] Build command: `npm run build`
- [x] All dependencies listed

✅ **Testing:**
- [x] App works in Replit
- [x] No console errors
- [x] All pages load correctly

✅ **Deployment:**
- [ ] GitHub repository created
- [ ] Code uploaded to GitHub
- [ ] Vercel account created
- [ ] Project imported to Vercel
- [ ] Deployment successful

## 🎯 After Deployment

### Your New URLs:
- **Production**: `https://vsf-tech-help-desk.vercel.app`
- **Custom Domain**: `https://help.vsf.edu.ph` (if configured)

### Features That Work:
- ✅ Help ticket submission
- ✅ FAQ browsing
- ✅ Responsive design
- ✅ Victoria School branding
- ✅ In-memory storage (resets on restart)

### Next Steps:
1. **Test the live site** - Make sure everything works
2. **Share with colleagues** - Get feedback from VSF staff
3. **Set up custom domain** - Use help.vsf.edu.ph
4. **Add Google OAuth** - For real authentication (optional)

## 🛠️ Maintenance & Updates

### To Update Your App:
1. Make changes in Replit
2. Download updated ZIP
3. Upload to GitHub (replace files)
4. Vercel automatically redeploys

### Monitoring:
- Check Vercel dashboard for deployment status
- Monitor usage (stays well within free limits)
- Review performance metrics

## 🔒 Security & Best Practices

### Included Security:
- ✅ HTTPS encryption (automatic)
- ✅ Input validation
- ✅ CSRF protection
- ✅ Secure headers

### For Production:
- Consider adding Google OAuth for real authentication
- Monitor for unusual traffic patterns
- Keep dependencies updated

## 📞 Support

### If You Need Help:
1. Check Vercel dashboard for error messages
2. Review deployment logs
3. Contact Victoria School Foundation IT support
4. Reference this guide

### Common Issues:
- **Build fails**: Check Node.js version in package.json
- **404 errors**: Verify vercel.json routing
- **Slow loading**: Check for large files

---

**Victoria School Foundation - Tech Help Desk**  
*Tradisyonal na galing, Makabagong pag-iisip*  
**Deployment Date:** $(date)  
**Platform:** Vercel (Free Tier)  
**Cost:** $0/month