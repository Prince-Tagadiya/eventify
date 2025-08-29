<div align="center">

# 🎉 Eventify - Ultimate Event Management Platform

[![Eventify](https://img.shields.io/badge/Eventify-Platform-blue?style=for-the-badge&logo=react)](https://huddle-e6492.web.app)
[![MERN Stack](https://img.shields.io/badge/MERN-Stack-green?style=for-the-badge)](https://huddle-e6492.web.app)
[![Firebase](https://img.shields.io/badge/Firebase-Hosting-orange?style=for-the-badge&logo=firebase)](https://huddle-e6492.web.app)
[![Railway](https://img.shields.io/badge/Railway-Backend-blue?style=for-the-badge&logo=railway)](https://huddle-backend-production.up.railway.app)

> **A comprehensive event management platform built with the MERN stack, featuring real-time updates, role-based access control, and advanced event management capabilities.**

[![Live Demo](https://img.shields.io/badge/Live_Demo-View_Now-green?style=for-the-badge&logo=globe)](https://huddle-e6492.web.app)
[![Documentation](https://img.shields.io/badge/Documentation-Read_More-blue?style=for-the-badge&logo=book)](#features)

</div>

---

## 🌟 Live Demo & Links

<div align="center">

| Platform | URL | Status |
|----------|-----|--------|
| **🌐 Frontend** | [https://huddle-e6492.web.app](https://huddle-e6492.web.app) | ![Status](https://img.shields.io/badge/Status-Live-green) |
| **⚙️ Backend API** | [https://huddle-backend-production.up.railway.app](https://huddle-backend-production.up.railway.app) | ![Status](https://img.shields.io/badge/Status-Live-green) |
| **📊 Admin Panel** | [https://huddle-e6492.web.app/admin-dashboard](https://huddle-e6492.web.app/admin-dashboard) | ![Status](https://img.shields.io/badge/Status-Live-green) |

</div>

---

## 🚀 Quick Start

<div align="center">

[![Deploy to Firebase](https://img.shields.io/badge/Deploy_to_Firebase-Now-orange?style=for-the-badge&logo=firebase)](https://console.firebase.google.com/)
[![Deploy to Railway](https://img.shields.io/badge/Deploy_to_Railway-Now-blue?style=for-the-badge&logo=railway)](https://railway.app/)

</div>

### 🛠️ Prerequisites
```bash
Node.js (v16 or higher)
MongoDB (Atlas or local)
Firebase Account
Railway Account
```

### 📦 Installation
```bash
# Clone the repository
git clone https://github.com/your-username/eventify.git
cd eventify

# Install dependencies
cd frontend && npm install
cd ../backend && npm install

# Set up environment variables
cp .env.example .env

# Start development servers
npm run dev  # Frontend
npm run dev  # Backend (in backend directory)
```

---

## 🎯 Features Overview

<div align="center">

### 👥 **User Management & Authentication**
[![Authentication](https://img.shields.io/badge/Authentication-JWT_%2B_Google-blue?style=flat-square)](https://huddle-e6492.web.app)
[![Roles](https://img.shields.io/badge/Roles-Attendee_%7C_Organizer_%7C_Admin-green?style=flat-square)](https://huddle-e6492.web.app)

### 🎪 **Event Management**
[![Events](https://img.shields.io/badge/Events-Create_%7C_Manage_%7C_Join-purple?style=flat-square)](https://huddle-e6492.web.app)
[![Approval](https://img.shields.io/badge/Approval-Workflow-orange?style=flat-square)](https://huddle-e6492.web.app)

### 👥 **Team Management**
[![Teams](https://img.shields.io/badge/Teams-Formation_%7C_Approval-yellow?style=flat-square)](https://huddle-e6492.web.app)
[![Matching](https://img.shields.io/badge/Matching-Smart_Algorithm-green?style=flat-square)](https://huddle-e6492.web.app)

### 📊 **Admin Panel**
[![Admin](https://img.shields.io/badge/Admin-Full_Control-red?style=flat-square)](https://huddle-e6492.web.app)
[![Analytics](https://img.shields.io/badge/Analytics-Real_Time-blue?style=flat-square)](https://huddle-e6492.web.app)

</div>

---

## 🎨 Detailed Features

### 👥 **User Management & Authentication**

<details>
<summary><b>🔐 Multi-Provider Authentication</b></summary>

- **📧 Email/Password Registration & Login**
- **🔑 Google OAuth Integration** (Firebase Auth)
- **🎫 JWT Token-based Authentication**
- **🔒 Password Recovery System**
  - Forgot Password functionality
  - Username recovery options
- **⚡ Real-time Session Management**

</details>

<details>
<summary><b>👑 Role-Based Access Control (RBAC)</b></summary>

#### **👤 Attendee** (Default Role)
- Browse and join events
- Create and join teams
- View event details and maps
- Express interest in events

#### **🎪 Organizer** (Approved Role)
- All attendee permissions
- Create and manage events
- Event approval workflow
- Analytics for own events

#### **⚡ Admin** (Super User)
- All organizer permissions
- User management (promote/demote/deactivate)
- Event moderation and approval
- System-wide analytics
- Team management

</details>

<details>
<summary><b>⚡ Real-Time User Status Updates</b></summary>

- **🔄 Instant Role Changes**: No logout required
- **🚫 Real-Time Deactivation**: Immediate account suspension
- **🔔 Live Notifications**: Status change alerts
- **🚪 Auto-Logout**: Deactivated users automatically logged out

</details>

### 🎪 **Event Management**

<details>
<summary><b>📝 Event Creation & Management</b></summary>

- **📋 Multi-Step Event Creation**
  - Basic event details
  - Location with interactive map
  - Team requirements configuration
  - Prize pool structure (INR)
  - Image upload with compression
- **✅ Event Approval Workflow**
  - Pending → Admin Review → Approved/Rejected
  - Edit approval system
  - Bulk approval for admins
- **📊 Event Status Management**
  - Draft, Pending, Approved, Rejected, Edited_Pending
  - Status-based visibility control

</details>

<details>
<summary><b>🌟 Advanced Event Features</b></summary>

- **📸 Interactive Photo Gallery**
  - Click to view full-size images
  - Image compression for performance
  - Base64 storage for reliability
- **🔍 Category-Based Search & Filtering**
  - Multiple event categories
  - Case-insensitive search
  - Map and list view filtering
- **🗺️ Location Services**
  - Interactive Leaflet.js maps
  - Custom map markers
  - Address geocoding
- **💰 Prize Pool Management**
  - Indian Rupee (INR) currency
  - Structured prize distribution
  - Team-based prize allocation

</details>

### 👥 **Team Management**

<details>
<summary><b>✅ Two-Step Team Approval System</b></summary>

1. **👥 Team Leader Approval**
2. **⚡ Admin Review & Approval**

</details>

<details>
<summary><b>🧠 Smart Team Formation</b></summary>

- **🎯 Solo Participant Matching**
  - Suggest compatible solo users
  - Interest-based matching
  - Team formation assistance
- **💭 "Interested in Joining" System**
  - Express interest in events
  - View other interested users
  - Direct team formation
- **✅ Team Requirements Validation**
  - Girls/Boys required validation
  - Calculated team size
  - Server-side validation

</details>

### 📊 **Admin Panel**

<details>
<summary><b>👥 Comprehensive User Management</b></summary>

- **📋 User List with Advanced Filtering**
- **👑 Role Management**
  - Promote to organizer/admin
  - Demote to attendee
  - Real-time role updates
- **🚫 Account Deactivation System**
  - Deactivate with reason
  - Real-time deactivation
  - Auto-logout for deactivated users
- **📝 Organizer Request Management**
  - Review organizer applications
  - Approve/reject with email notifications
  - Detailed organizer information

</details>

<details>
<summary><b>📊 Event Moderation</b></summary>

- **⏳ Pending Events Management**
  - Review pending events
  - Bulk approval system
  - Individual event approval/rejection
- **📈 Event Analytics**
  - Event statistics
  - Participation metrics
  - Revenue tracking

</details>

<details>
<summary><b>👥 Team & Invite Management</b></summary>

- **✅ Team Approval System**
  - Review team requests
  - Approve/reject teams
  - Team leader management
- **📧 Invite Management**
  - Track event invitations
  - Invitation statistics

</details>

### 🎨 **User Interface & Experience**

<details>
<summary><b>📱 Responsive Design</b></summary>

- **📱 Mobile-First Approach**
- **🎨 TailwindCSS Styling**
- **🧩 Modern UI Components**
- **✨ Smooth Animations & Transitions**

</details>

<details>
<summary><b>🎭 Interactive Elements</b></summary>

- **🎊 Canvas Confetti Effects**
- **⏳ Loading States & Skeleton Screens**
- **🔔 Toast Notifications**
- **📋 Modal Dialogs**

</details>

<details>
<summary><b>📊 Dashboard System</b></summary>

- **🎯 Role-Based Dashboards**
  - Attendee Dashboard (joined events, teams)
  - Organizer Dashboard (event management)
  - Admin Dashboard (full system control)
- **⚡ Real-Time Updates**
- **🔒 Navigation Guards**

</details>

---

## 🛠 Technical Architecture

<div align="center">

### **Frontend Stack**
[![React](https://img.shields.io/badge/React-18-blue?style=flat-square&logo=react)](https://reactjs.org/)
[![Vite](https://img.shields.io/badge/Vite-Build_Tool-purple?style=flat-square&logo=vite)](https://vitejs.dev/)
[![TailwindCSS](https://img.shields.io/badge/TailwindCSS-Styling-38B2AC?style=flat-square&logo=tailwind-css)](https://tailwindcss.com/)
[![Leaflet](https://img.shields.io/badge/Leaflet-Maps-199900?style=flat-square&logo=leaflet)](https://leafletjs.com/)

### **Backend Stack**
[![Node.js](https://img.shields.io/badge/Node.js-Runtime-green?style=flat-square&logo=node.js)](https://nodejs.org/)
[![Express](https://img.shields.io/badge/Express-Framework-black?style=flat-square&logo=express)](https://expressjs.com/)
[![MongoDB](https://img.shields.io/badge/MongoDB-Database-47A248?style=flat-square&logo=mongodb)](https://www.mongodb.com/)
[![JWT](https://img.shields.io/badge/JWT-Authentication-000000?style=flat-square&logo=json-web-tokens)](https://jwt.io/)

### **Deployment**
[![Firebase](https://img.shields.io/badge/Firebase-Hosting-FFCA28?style=flat-square&logo=firebase)](https://firebase.google.com/)
[![Railway](https://img.shields.io/badge/Railway-Backend-0B0D0E?style=flat-square&logo=railway)](https://railway.app/)

</div>

### **Database Schema**

<details>
<summary><b>👤 User Model</b></summary>

```javascript
{
  name: String,
  email: String (unique),
  username: String (unique),
  password: String (hashed),
  role: Enum ['user', 'organizer', 'admin'],
  isActive: Boolean,
  deactivationReason: String,
  deactivatedAt: Date,
  organizerProfile: {
    isVerified: Boolean,
    organization: String,
    description: String,
    contactEmail: String,
    contactPhone: String,
    hasRequestedOrganizer: Boolean,
    organizerRequestDate: Date,
    organizerRequestReason: String,
    organizerRequestStatus: Enum ['pending', 'approved', 'rejected'],
    organizerRequestRejectionReason: String,
    approvedBy: ObjectId,
    approvedAt: Date
  },
  preferences: {
    notifications: { email: Boolean, push: Boolean },
    privacy: { showEmail: Boolean, showPhone: Boolean }
  }
}
```

</details>

<details>
<summary><b>🎪 Event Model</b></summary>

```javascript
{
  title: String,
  description: String,
  category: String,
  location: {
    address: String,
    coordinates: [Number, Number]
  },
  date: Date,
  maxParticipants: Number,
  teamRequirements: {
    girlsRequired: Number,
    boysRequired: Number,
    calculatedTeamSize: Number
  },
  prizePool: {
    totalAmount: Number,
    firstPrize: Number,
    secondPrize: Number,
    thirdPrize: Number
  },
  images: [String], // Base64 encoded
  status: Enum ['draft', 'pending', 'approved', 'rejected', 'edited_pending'],
  createdBy: ObjectId,
  approvedBy: ObjectId,
  approvedAt: Date
}
```

</details>

---

## 🔧 Error Handling & Validation

<div align="center">

[![Error Handling](https://img.shields.io/badge/Error_Handling-Comprehensive-red?style=flat-square)](https://huddle-e6492.web.app)
[![Validation](https://img.shields.io/badge/Validation-Robust-green?style=flat-square)](https://huddle-e6492.web.app)

</div>

### **Frontend Error Handling**
- **🔍 API Error Interceptors**
- **🌐 Network Error Detection**
- **✅ Form Validation**
- **💬 User-Friendly Error Messages**
- **🛡️ Graceful Degradation**

### **Backend Error Handling**
- **🔄 Comprehensive Try-Catch Blocks**
- **✅ Input Validation**
- **🗄️ Database Error Handling**
- **🔐 Authentication Error Management**
- **📝 Detailed Error Logging**

### **Validation Rules**
- **👤 Username**: No spaces, lowercase, unique
- **📧 Email**: Valid format, unique
- **🔒 Password**: Minimum strength requirements
- **📅 Event Data**: Required fields, valid dates
- **👥 Team Requirements**: Logical validation
- **💰 Prize Pool**: Positive amounts, valid distribution

---

## 🚀 Deployment

<div align="center">

[![Deploy](https://img.shields.io/badge/Deploy-Instructions-blue?style=for-the-badge)](https://huddle-e6492.web.app)

</div>

### **Frontend Deployment (Firebase Hosting)**
```bash
# Build the project
npm run build

# Deploy to Firebase
firebase deploy --only hosting
```

### **Backend Deployment (Railway)**
- **🔄 Automatic deployment** from GitHub
- **⚙️ Environment variables** configured
- **🗄️ MongoDB Atlas** connection
- **🌐 CORS** properly configured

### **Environment Variables**
```env
# Backend
MONGODB_URI=mongodb+srv://...
JWT_SECRET=your-jwt-secret
CLIENT_ORIGIN=https://your-frontend.firebaseapp.com
EMAIL_USER=your-email
EMAIL_PASS=your-email-password

# Frontend
VITE_API_BASE_URL=https://your-backend.railway.app
```

---

## 📱 API Endpoints

<div align="center">

[![API](https://img.shields.io/badge/API-Documentation-blue?style=flat-square)](https://huddle-e6492.web.app)

</div>

### **Authentication**
- `POST /auth/register` - User registration
- `POST /auth/login` - User login
- `POST /auth/google` - Google OAuth
- `POST /auth/forgot-password` - Password recovery
- `POST /auth/reset-password` - Password reset

### **User Management**
- `GET /users/profile` - Get user profile
- `PUT /users/profile` - Update profile
- `PUT /users/change-password` - Change password
- `POST /users/request-organizer` - Request organizer status
- `GET /users/organizer-request-status` - Get organizer status

### **Event Management**
- `GET /events` - Get public events
- `POST /events` - Create event
- `PUT /events/:id` - Update event
- `DELETE /events/:id` - Delete event
- `POST /events/:id/join` - Join event

### **Admin Endpoints**
- `GET /admin/users` - Get all users
- `PUT /admin/users/:id/role` - Update user role
- `POST /admin/users/:id/deactivate` - Deactivate user
- `POST /admin/users/:id/activate` - Activate user
- `GET /admin/events` - Get all events
- `POST /admin/events/:id/approve` - Approve event
- `POST /admin/events/:id/reject` - Reject event

---

## 🔒 Security Features

<div align="center">

[![Security](https://img.shields.io/badge/Security-Robust-red?style=flat-square)](https://huddle-e6492.web.app)

</div>

### **Authentication Security**
- **🎫 JWT Token Validation**
- **🔐 Password Hashing** (bcryptjs)
- **🔑 Google OAuth Verification**
- **⚡ Session Management**

### **Data Protection**
- **🧹 Input Sanitization**
- **🛡️ SQL Injection Prevention**
- **🔒 XSS Protection**
- **🌐 CORS Configuration**

### **Access Control**
- **👑 Role-Based Middleware**
- **🔒 Route Protection**
- **⚡ Admin-Only Endpoints**
- **✅ User Permission Validation**

---

## 🧪 Testing & Quality Assurance

<div align="center">

[![Testing](https://img.shields.io/badge/Testing-Comprehensive-green?style=flat-square)](https://huddle-e6492.web.app)

</div>

### **Manual Testing Scenarios**
- **👤 User Registration & Login**
- **🎪 Event Creation & Management**
- **👥 Team Formation & Approval**
- **⚡ Admin Panel Operations**
- **⚡ Real-Time Updates**
- **🛡️ Error Handling**

### **Browser Compatibility**
- **🌐 Chrome** (Recommended)
- **🦊 Firefox**
- **🍎 Safari**
- **🔵 Edge**

### **Mobile Responsiveness**
- **📱 iOS Safari**
- **🤖 Android Chrome**
- **📱 Tablet Browsers**

---

## 🚨 Known Issues & Solutions

<div align="center">

[![Issues](https://img.shields.io/badge/Issues-Solutions-orange?style=flat-square)](https://huddle-e6492.web.app)

</div>

### **Common Issues**
1. **"Failed to create event"**
   - **🔧 Solution**: Check team requirements validation
   - **✅ Fix**: Ensure girlsRequired + boysRequired ≤ maxParticipants

2. **"Network error"**
   - **🔧 Solution**: Check backend deployment status
   - **✅ Fix**: Verify Railway deployment and environment variables

3. **"Login failed"**
   - **🔧 Solution**: Check user credentials and account status
   - **✅ Fix**: Verify user is not deactivated

4. **"Browse Events" logout issue**
   - **🔧 Solution**: Check authentication token
   - **✅ Fix**: Clear localStorage and re-login

### **Performance Optimizations**
- **🖼️ Image Compression** for faster loading
- **⚡ Lazy Loading** for components
- **💾 API Response Caching**
- **🗄️ Database Indexing**

---

## 📈 Future Enhancements

<div align="center">

[![Future](https://img.shields.io/badge/Future-Roadmap-purple?style=flat-square)](https://huddle-e6492.web.app)

</div>

### **Planned Features**
- **💬 Real-Time Chat** for teams
- **💳 Payment Integration** for event fees
- **📊 Advanced Analytics** dashboard
- **📱 Mobile App** development
- **📧 Email Notifications** system
- **📱 Social Media Integration**

### **Technical Improvements**
- **🔌 WebSocket** for real-time updates
- **⚡ Redis** for caching
- **🐳 Docker** containerization
- **🔄 CI/CD** pipeline
- **🧪 Unit Testing** implementation

---

## 🤝 Contributing

<div align="center">

[![Contributing](https://img.shields.io/badge/Contributing-Welcome-green?style=flat-square)](https://huddle-e6492.web.app)

</div>

### **Development Setup**
```bash
# Clone the repository
git clone https://github.com/your-username/eventify.git

# Install dependencies
cd frontend && npm install
cd ../backend && npm install

# Set up environment variables
cp .env.example .env

# Start development servers
# Frontend: npm run dev
# Backend: npm run dev
```

### **Code Standards**
- **🔍 ESLint** configuration
- **💅 Prettier** formatting
- **📝 Conventional Commits**
- **👀 Code Review** process

---

## 📄 License

<div align="center">

[![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)](https://opensource.org/licenses/MIT)

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

</div>

---

## 👨‍💻 Author

<div align="center">

**Prince Tagadiya**
- **🐙 GitHub**: [@prince-tagadiya](https://github.com/prince-tagadiya)
- **📧 Email**: prince@example.com

</div>

---

## 🙏 Acknowledgments

<div align="center">

- **🔥 Firebase** for hosting and authentication
- **🚂 Railway** for backend deployment
- **🗄️ MongoDB Atlas** for database hosting
- **🎨 TailwindCSS** for styling framework
- **⚛️ React Community** for excellent documentation

</div>

---

<div align="center">

## 🎉 Eventify - Making Event Management Simple, Efficient, and Enjoyable!

[![Stars](https://img.shields.io/github/stars/your-username/eventify?style=social)](https://github.com/your-username/eventify)
[![Forks](https://img.shields.io/github/forks/your-username/eventify?style=social)](https://github.com/your-username/eventify)
[![Issues](https://img.shields.io/github/issues/your-username/eventify)](https://github.com/your-username/eventify/issues)
[![Pull Requests](https://img.shields.io/github/issues-pr/your-username/eventify)](https://github.com/your-username/eventify/pulls)

**Made with ❤️ by the Eventify Team**

</div>
