# Victoria School Tech Help Desk

## Overview

This is a full-stack web application for Victoria School Foundation's IT support built with React, Express.js, and TypeScript. The system allows students and staff to submit help tickets for Google Workspace issues, browse FAQs, and track their support requests. It features Google OAuth authentication and uses a PostgreSQL database with Drizzle ORM.

## School Information

- **Institution**: Victoria School Foundation (VSF)
- **Website**: https://vsf.edu.ph/
- **Motto**: "Tradisyonal na galing, Makabagong pag-iisip"
- **Legacy**: More Than 60 Years of Academic Excellence
- **Focus**: Google Workspace exclusive support for VSF students and staff

## User Preferences

Preferred communication style: Simple, everyday language.

## System Architecture

### Frontend Architecture
- **Framework**: React with TypeScript
- **Styling**: Tailwind CSS with Material Design influence
- **UI Components**: Radix UI primitives with custom shadcn/ui components
- **State Management**: React Query (@tanstack/react-query) for server state
- **Routing**: Wouter for client-side routing
- **Forms**: React Hook Form with Zod validation
- **Build Tool**: Vite

### Backend Architecture
- **Framework**: Express.js with TypeScript
- **Database**: PostgreSQL with Drizzle ORM
- **Authentication**: Google OAuth 2.0
- **API Design**: RESTful endpoints under `/api`
- **Session Management**: In-memory storage (development) with planned PostgreSQL session store

### Key Components

1. **Authentication System**
   - Google OAuth integration for secure login
   - JWT-like session management
   - Protected routes and middleware

2. **Ticket Management**
   - Create, read, update, and delete support tickets
   - Priority levels (low, medium, high)
   - Status tracking (open, in_progress, resolved)
   - Category-based organization

3. **FAQ System**
   - Categorized frequently asked questions
   - Icon-based visual organization
   - Search and filter capabilities

4. **User Interface**
   - Responsive design with mobile support
   - Material Design principles
   - Smooth animations and transitions
   - Toast notifications for user feedback

## Data Flow

1. **Authentication Flow**
   - User clicks Google sign-in button
   - Google OAuth popup handles authentication
   - Backend validates token and creates/updates user record
   - Session established with user context

2. **Ticket Creation Flow**
   - User fills out ticket form (category, priority, subject, description)
   - Form validation using Zod schemas
   - API call to create ticket with user ID
   - Real-time UI updates via React Query

3. **Data Fetching**
   - React Query handles all API calls with caching
   - Automatic background refetching
   - Optimistic updates for better UX

## External Dependencies

### Frontend Dependencies
- **@radix-ui/react-***: Accessible UI primitives
- **@tanstack/react-query**: Server state management
- **wouter**: Lightweight routing
- **react-hook-form**: Form management
- **zod**: Schema validation
- **tailwindcss**: Utility-first styling

### Backend Dependencies
- **express**: Web framework
- **drizzle-orm**: Type-safe database ORM
- **@neondatabase/serverless**: PostgreSQL driver
- **zod**: Schema validation (shared with frontend)

### Development Tools
- **vite**: Build tool and dev server
- **typescript**: Type checking
- **drizzle-kit**: Database migration tool
- **esbuild**: Production bundling

## Deployment Strategy

### Build Process
1. **Frontend**: Vite builds React app to `dist/public`
2. **Backend**: esbuild bundles Express server to `dist/index.js`
3. **Database**: Drizzle migrations applied via `db:push` command

### Environment Configuration
- **Development**: `npm run dev` starts both frontend and backend
- **Production**: `npm run build` then `npm start`
- **Database**: Configured via `DATABASE_URL` environment variable

### File Structure
- `client/`: React frontend application
- `server/`: Express backend application
- `shared/`: Shared types and schemas
- `migrations/`: Database migration files

### Key Features
- **Hot Module Replacement**: Vite provides fast development experience
- **Type Safety**: Full TypeScript coverage across frontend and backend
- **Database Migrations**: Automated schema management with Drizzle
- **Session Persistence**: User sessions maintained across page refreshes
- **Error Handling**: Comprehensive error boundaries and API error handling

The application is designed to be easily deployable to platforms like Replit, Vercel, or similar hosting providers with minimal configuration required.

## Recent Changes

- **Updated Branding**: Changed from generic "Student IT Help" to "Victoria School Tech Help Desk"
- **Added Official School Logo**: Integrated authentic VSF logo (est. 1965) with "Wisdom" and "Virtue" throughout the application
- **Authentic Contact Information**: Updated with real school contact details (info@vsf.edu.ph, https://vsf.edu.ph/)
- **Google Workspace Focus**: Emphasized exclusive Google Workspace support for VSF community
- **School Motto Integration**: Added "Tradisyonal na galing, Makabagong pag-iisip" to footer
- **Academic Excellence Messaging**: Highlighted "More Than 60 Years of Academic Excellence"
- **Email Notifications Added**: Implemented SendGrid integration for automatic email alerts to ITadmin@vsf.edu.ph
- **Live Agent Request Feature**: Added urgent assistance button that pre-fills priority and sends immediate notifications
- **Fixed Vercel Deployment**: Resolved "Could not resolve entry module" error with updated build configuration
- **Custom Build Process**: Created specialized build script for proper Vite + Express deployment on Vercel