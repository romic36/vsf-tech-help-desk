# Victoria School Tech Help Desk

A modern, responsive web application designed exclusively for Victoria School Foundation to manage Google Workspace support requests.

## 🏫 About Victoria School Foundation

**Victoria School Foundation Inc.**  
*Tradisyonal na galing, Makabagong pag-iisip*  
**More Than 60 Years of Academic Excellence**

- **Website**: [vsf.edu.ph](https://vsf.edu.ph)
- **Email**: info@vsf.edu.ph
- **Focus**: Google Workspace exclusive support

## ✨ Features

- **Help Ticket System**: Submit and track Google Workspace support requests
- **FAQ Section**: Common questions and solutions
- **Responsive Design**: Works on desktop, tablet, and mobile
- **Victoria School Branding**: Authentic school logo and colors
- **Material Design**: Clean, modern interface

## 🚀 Quick Start

### Option 1: Run Locally (Development)
```bash
npm install
npm run dev
```
Open: `http://localhost:5000`

### Option 2: Production Build
```bash
npm run build
npm start
```

### Option 3: Easy Setup Scripts
- **Windows**: Double-click `setup.bat`
- **Mac/Linux**: Run `./setup.sh`

## 📁 Project Structure

```
├── client/           # React frontend
├── server/           # Express.js backend
├── shared/           # Shared types and schemas
├── attached_assets/  # School logo and images
├── vercel.json       # Vercel deployment config
└── package.json      # Dependencies and scripts
```

## 🌐 Deployment

### Vercel (Recommended - Free)
1. Push code to GitHub
2. Connect to Vercel
3. Deploy automatically
4. **Cost**: $0/month

See `VERCEL_DEPLOYMENT_GUIDE.md` for detailed instructions.

### Other Options
- **Netlify**: Free static hosting
- **Railway**: Full-stack hosting
- **Self-hosted**: Your own server

See `DEPLOYMENT_GUIDE.md` for all options.

## 🔧 Technology Stack

**Frontend:**
- React 18 with TypeScript
- Tailwind CSS
- Radix UI components
- React Query for state management
- Wouter for routing

**Backend:**
- Node.js with Express
- TypeScript
- In-memory storage
- Zod validation

**Development:**
- Vite for build tool
- ESBuild for production
- Hot module replacement

## 📊 System Requirements

- **Node.js**: 18 or higher
- **RAM**: 512MB minimum
- **Storage**: 100MB for app files
- **Bandwidth**: Minimal (under 1GB/month for typical school use)

## 🔐 Security Features

- Input validation and sanitization
- CSRF protection
- Secure headers
- HTTPS encryption (in production)
- Google OAuth ready (optional)

## 📱 Responsive Design

- **Mobile-first**: Optimized for smartphones
- **Tablet-friendly**: Great on iPads and tablets
- **Desktop**: Full-featured desktop experience
- **Accessibility**: Screen reader compatible

## 🎨 Victoria School Branding

- **Authentic Logo**: Official VSF logo (est. 1965)
- **School Colors**: Professional color scheme
- **Motto**: "Tradisyonal na galing, Makabagong pag-iisip"
- **Contact Info**: Real school contact details

## 📞 Support Categories

- **Google Classroom**: Assignment and grading issues
- **Google Drive**: File sharing and storage
- **Google Meet**: Video conferencing problems
- **Gmail**: Email configuration and issues
- **Google Calendar**: Scheduling and events
- **General**: Other Google Workspace questions

## 🔄 Updates and Maintenance

### To Update the App:
1. Make changes in your development environment
2. Test locally with `npm run dev`
3. Push to GitHub
4. Vercel automatically redeploys

### Regular Maintenance:
- Monitor deployment status
- Check for dependency updates
- Review usage analytics
- Update FAQ content

## 📈 Analytics and Monitoring

- **Vercel Analytics**: Built-in performance monitoring
- **Error Tracking**: Automatic error detection
- **Usage Statistics**: Traffic and performance data
- **Uptime Monitoring**: 99.9% availability

## 🤝 Contributing

This application is specifically designed for Victoria School Foundation. For modifications or customizations, contact the school's IT department.

## 📄 License

MIT License - See LICENSE file for details

## 🏆 Academic Excellence

Built with pride for Victoria School Foundation's commitment to combining traditional values with modern innovation in education.

---

**Victoria School Foundation - Tech Help Desk**  
*Tradisyonal na galing, Makabagong pag-iisip*  
**Deployment**: Vercel (Free Tier)  
**Maintenance**: Zero subscription costs