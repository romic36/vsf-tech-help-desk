# Email Notifications Setup Guide

## Overview

Your Victoria School Tech Help Desk now includes email notifications to `ITadmin@vsf.edu.ph` whenever:
- A new support ticket is submitted
- A live agent is requested (marked with 🚨 LIVE AGENT REQUEST)

## Features Added

### 1. **Automatic Email Notifications**
- **Recipient**: ITadmin@vsf.edu.ph
- **Sender**: noreply@vsf.edu.ph
- **Content**: Complete ticket details including student info, category, priority, and description

### 2. **Live Agent Request Button**
- **Location**: Bottom of ticket form
- **Function**: Pre-fills form for urgent assistance
- **Priority**: Automatically set to "urgent"
- **Email Subject**: Gets 🚨 LIVE AGENT REQUEST prefix

### 3. **Professional Email Format**
- Victoria School Foundation branding
- Structured ticket information
- Clear next steps for IT admin
- School motto and contact information

## Setup Options

### Option A: Enable Email Notifications (Recommended)

To enable actual email sending, you'll need a SendGrid account:

1. **Create SendGrid Account**
   - Go to [SendGrid.com](https://sendgrid.com)
   - Sign up for free account (100 emails/day free)
   - Verify your email address

2. **Create API Key**
   - Go to Settings → API Keys
   - Create new API key with "Mail Send" permissions
   - Copy the API key (starts with "SG.")

3. **Add to Vercel Environment**
   - In Vercel dashboard, go to your project
   - Settings → Environment Variables
   - Add: `SENDGRID_API_KEY` = your API key
   - Redeploy your application

### Option B: Test Without SendGrid (Current Setup)

The application works perfectly without SendGrid:
- Email notifications are logged to console
- All other functionality works normally
- No setup required

## Email Templates

### Regular Support Ticket
```
Subject: New IT Support Ticket - Google Drive - MEDIUM Priority

Victoria School Foundation
New IT Support Ticket

Student: John Doe
Email: john.doe@vsf.edu.ph
Category: Google Drive
Priority: MEDIUM
Subject: Cannot access shared folder

Description:
I'm unable to access the shared folder that my teacher created...
```

### Live Agent Request
```
Subject: 🚨 LIVE AGENT REQUEST - Google Classroom - URGENT Priority

Victoria School Foundation
New IT Support Ticket

Student: Jane Smith
Email: jane.smith@vsf.edu.ph
Category: Google Classroom
Priority: URGENT
Subject: URGENT: Live Agent Assistance Required

Description:
I need immediate assistance from a live agent. Please contact me as soon as possible.

Issue details:
Cannot submit my assignment due in 30 minutes...
```

## How It Works

### When Students Submit Tickets:
1. **Form Submission**: Student fills out support form
2. **Ticket Created**: System creates ticket in database
3. **Email Sent**: Automatic email to ITadmin@vsf.edu.ph
4. **Confirmation**: Student sees success message

### When Live Agent Requested:
1. **Button Click**: Student clicks "Request Live Agent"
2. **Form Pre-filled**: Priority set to urgent, subject pre-written
3. **Student Adds Details**: Student completes issue description
4. **Priority Email**: Email sent with 🚨 LIVE AGENT REQUEST prefix

## Benefits for Victoria School Foundation

### **Immediate Notifications**
- IT admin gets instant email alerts
- No need to check dashboard constantly
- Mobile-friendly email format

### **Priority Handling**
- Live agent requests clearly marked
- Urgent issues get immediate attention
- Professional email format maintains school reputation

### **Complete Information**
- Student contact details included
- Full issue description provided
- Category and priority clearly stated

## Troubleshooting

### Email Not Sending
- Check SENDGRID_API_KEY environment variable
- Verify SendGrid account is active
- Check Vercel deployment logs

### Wrong Email Address
- Update `ITadmin@vsf.edu.ph` in `server/email.ts`
- Redeploy application after changes

### Email in Spam
- Add noreply@vsf.edu.ph to safe senders
- Configure SPF/DKIM records in SendGrid

## Cost Information

### SendGrid Free Tier
- **100 emails/day**: Perfect for school use
- **No monthly fees**: Completely free
- **Professional features**: Templates, analytics, etc.

### Typical School Usage
- 10-20 tickets per day = 10-20 emails
- Well within free tier limits
- Zero ongoing costs

## Security Notes

- SendGrid API key should be kept secure
- Email content includes student information
- Consider data privacy requirements
- Regular security updates recommended

---

**Victoria School Foundation - Tech Help Desk**  
*Tradisyonal na galing, Makabagong pag-iisip*  
**Email Integration**: SendGrid  
**Cost**: Free (100 emails/day)