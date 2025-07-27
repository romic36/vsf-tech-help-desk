# Quick Setup: Free Email Notifications for VSF

## 🎯 Recommended: EmailJS (5 Minutes Setup)

EmailJS is perfect for Victoria School Foundation because it's completely free and works immediately.

### Step-by-Step Setup:

#### 1. Create EmailJS Account
- Go to [EmailJS.com](https://www.emailjs.com)
- Sign up with your school Gmail account (ITadmin@vsf.edu.ph)

#### 2. Add Email Service
- Click "Add Service"
- Choose "Gmail"
- Connect your school Gmail account

#### 3. Create Email Template
- Click "Create Template"
- Use this template:

```
Subject: {{subject}}

Victoria School Foundation - IT Support Notification

Ticket Details:
- Ticket ID: {{ticket_id}}
- Student/Staff: {{from_name}}
- Email: {{from_email}}
- Category: {{category}}
- Priority: {{priority}}

{{message}}

Please respond directly to the student/staff member.

{{school_name}}
{{school_motto}}
```

#### 4. Get Your IDs
After setup, you'll get three important IDs:
- **Service ID**: service_xxxxxxx
- **Template ID**: template_xxxxxxx  
- **Public Key**: xxxxxxxxxxxxxxx

#### 5. Add to Vercel Environment Variables
In your Vercel dashboard → Settings → Environment Variables:

```
VITE_EMAILJS_SERVICE_ID=your_service_id
VITE_EMAILJS_TEMPLATE_ID=your_template_id
VITE_EMAILJS_PUBLIC_KEY=your_public_key
```

#### 6. Redeploy
Your app will now send real emails to ITadmin@vsf.edu.ph!

## 🔄 Alternative: Gmail SMTP (Most Reliable)

If you prefer using Gmail directly:

#### 1. Enable 2-Factor Authentication
On your ITadmin@vsf.edu.ph account:
- Google Account → Security → 2-Step Verification → Turn On

#### 2. Create App Password
- Google Account → Security → App Passwords
- Generate password for "Mail"
- Copy the 16-character password

#### 3. Add to Vercel
Environment Variables:
```
GMAIL_USER=ITadmin@vsf.edu.ph
GMAIL_APP_PASSWORD=your_16_character_password
```

## ✅ What Happens After Setup

### Email Notifications Will Include:
- Student/staff name and email
- Ticket category and priority
- Full issue description
- Victoria School Foundation branding
- Professional formatting

### Live Agent Requests Get:
- 🚨 LIVE AGENT REQUEST prefix
- Urgent priority marking
- Immediate delivery

### Benefits:
- Zero monthly costs
- Professional appearance
- Instant notifications
- Reliable delivery

## 🆘 If You Need Help

The system has multiple backups:
1. **EmailJS** (if configured)
2. **Gmail SMTP** (if configured)
3. **Console logging** (always works)

Even without any setup, IT admin will see notifications in the application logs, so you're never without notification capability.

Your Victoria School Tech Help Desk will have professional email notifications working in minutes!

---

**Victoria School Foundation - Tech Help Desk**  
*Tradisyonal na galing, Makabagong pag-iisip*  
**Setup Time**: 5 minutes  
**Monthly Cost**: $0