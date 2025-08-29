# 🚀 Eventify Deployment Guide

## 📋 Prerequisites

Before starting the deployment process, ensure you have:

- [ ] **GitHub Account** (your friend's)
- [ ] **Firebase Account** (your friend's)
- [ ] **Railway Account** (your friend's)
- [ ] **MongoDB Atlas Account** (your friend's)
- [ ] **Node.js** (v16 or higher) installed
- [ ] **Git** installed

---

## 🔄 Step 1: Transfer Repository to Friend's GitHub

### 1.1 Create New Repository
1. **Login to your friend's GitHub account**
2. **Create a new repository**:
   - Go to [GitHub](https://github.com)
   - Click "New repository"
   - Name: `eventify` (or any name you prefer)
   - Description: `Ultimate Event Management Platform`
   - Make it **Public** or **Private** (your choice)
   - **Don't** initialize with README (we'll push our own)

### 1.2 Clone and Transfer Code
```bash
# Clone the current repository
git clone https://github.com/Prince-Tagadiya/eventify.git
cd eventify

# Remove existing remote
git remote remove origin

# Add your friend's repository as new remote
git remote add origin https://github.com/YOUR_FRIEND_USERNAME/eventify.git

# Push to your friend's repository
git push -u origin main
```

---

## 🔥 Step 2: Firebase Setup (Frontend)

### 2.1 Create Firebase Project
1. **Go to [Firebase Console](https://console.firebase.google.com/)**
2. **Create a new project**:
   - Project name: `eventify` (or your preferred name)
   - Enable Google Analytics (optional)
   - Click "Create project"

### 2.2 Enable Hosting
1. **In Firebase Console**:
   - Click "Hosting" in the left sidebar
   - Click "Get started"
   - Choose "Use an existing project" if prompted

### 2.3 Enable Authentication
1. **In Firebase Console**:
   - Click "Authentication" in the left sidebar
   - Click "Get started"
   - Go to "Sign-in method" tab
   - Enable "Google" provider
   - Add your domain to authorized domains

### 2.4 Get Firebase Config
1. **In Firebase Console**:
   - Click the gear icon (⚙️) next to "Project Overview"
   - Select "Project settings"
   - Scroll down to "Your apps"
   - Click the web icon (</>)
   - Register app with name: `eventify-web`
   - Copy the Firebase config object

### 2.5 Update Firebase Config
1. **Update `frontend/src/lib/firebase.js`**:
```javascript
// Replace with your friend's Firebase config
const firebaseConfig = {
  apiKey: "YOUR_FRIEND_API_KEY",
  authDomain: "YOUR_FRIEND_PROJECT.firebaseapp.com",
  projectId: "YOUR_FRIEND_PROJECT_ID",
  storageBucket: "YOUR_FRIEND_PROJECT.firebasestorage.app",
  messagingSenderId: "YOUR_FRIEND_SENDER_ID",
  appId: "YOUR_FRIEND_APP_ID",
  measurementId: "YOUR_FRIEND_MEASUREMENT_ID"
};
```

### 2.6 Install Firebase CLI
```bash
# Install Firebase CLI globally
npm install -g firebase-tools

# Login to Firebase
firebase login

# Initialize Firebase in the project
cd frontend
firebase init hosting

# Select your friend's project when prompted
# Set public directory to: dist
# Configure as single-page app: Yes
# Don't overwrite index.html: No
```

---

## 🚂 Step 3: Railway Setup (Backend)

### 3.1 Create Railway Account
1. **Go to [Railway](https://railway.app/)**
2. **Sign up/Sign in** with your friend's account
3. **Create a new project**:
   - Click "New Project"
   - Select "Deploy from GitHub repo"
   - Choose your friend's `eventify` repository
   - Set root directory to: `backend`

### 3.2 Configure Environment Variables
1. **In Railway Dashboard**:
   - Go to your project
   - Click "Variables" tab
   - Add the following environment variables:

```env
MONGODB_URI=mongodb+srv://YOUR_FRIEND_MONGODB_URI
JWT_SECRET=YOUR_FRIEND_JWT_SECRET_KEY
CLIENT_ORIGIN=https://YOUR_FRIEND_FIREBASE_APP.web.app
EMAIL_USER=YOUR_FRIEND_EMAIL@gmail.com
EMAIL_PASS=YOUR_FRIEND_EMAIL_APP_PASSWORD
PORT=4000
NODE_ENV=production
```

### 3.3 Deploy Backend
1. **Railway will automatically deploy** when you push to GitHub
2. **Get the deployment URL** from Railway dashboard
3. **Update frontend environment** with the new backend URL

---

## 🗄️ Step 4: MongoDB Atlas Setup

### 4.1 Create MongoDB Atlas Account
1. **Go to [MongoDB Atlas](https://www.mongodb.com/atlas)**
2. **Sign up/Sign in** with your friend's account
3. **Create a new cluster**:
   - Choose "Free" tier
   - Select cloud provider and region
   - Click "Create"

### 4.2 Configure Database Access
1. **In MongoDB Atlas**:
   - Go to "Database Access"
   - Click "Add New Database User"
   - Username: `eventify-admin`
   - Password: Generate a strong password
   - Role: "Atlas admin"
   - Click "Add User"

### 4.3 Configure Network Access
1. **In MongoDB Atlas**:
   - Go to "Network Access"
   - Click "Add IP Address"
   - Click "Allow Access from Anywhere" (0.0.0.0/0)
   - Click "Confirm"

### 4.4 Get Connection String
1. **In MongoDB Atlas**:
   - Go to "Clusters"
   - Click "Connect"
   - Choose "Connect your application"
   - Copy the connection string
   - Replace `<password>` with your friend's database password
   - Add `?retryWrites=true&w=majority` at the end

---

## ⚙️ Step 5: Update Environment Variables

### 5.1 Update Frontend Environment
1. **Create `frontend/.env`**:
```env
VITE_API_BASE_URL=https://YOUR_FRIEND_RAILWAY_APP.railway.app
```

### 5.2 Update Backend Environment
1. **Create `backend/.env`**:
```env
MONGODB_URI=mongodb+srv://eventify-admin:YOUR_FRIEND_PASSWORD@YOUR_FRIEND_CLUSTER.mongodb.net/eventify?retryWrites=true&w=majority
JWT_SECRET=YOUR_FRIEND_SUPER_SECRET_JWT_KEY
CLIENT_ORIGIN=https://YOUR_FRIEND_FIREBASE_APP.web.app
EMAIL_USER=YOUR_FRIEND_EMAIL@gmail.com
EMAIL_PASS=YOUR_FRIEND_EMAIL_APP_PASSWORD
PORT=4000
NODE_ENV=production
```

---

## 🚀 Step 6: Deploy to Production

### 6.1 Build and Deploy Frontend
```bash
# Navigate to frontend directory
cd frontend

# Install dependencies
npm install

# Build the project
npm run build

# Deploy to Firebase
firebase deploy --only hosting
```

### 6.2 Deploy Backend
```bash
# Navigate to backend directory
cd backend

# Install dependencies
npm install

# Railway will automatically deploy when you push to GitHub
git add .
git commit -m "Initial deployment setup"
git push origin main
```

---

## 🔧 Step 7: Final Configuration

### 7.1 Update README.md
1. **Update all URLs** in README.md to point to your friend's deployments
2. **Update GitHub repository links**
3. **Update author information**

### 7.2 Test the Application
1. **Test frontend**: Visit your friend's Firebase hosting URL
2. **Test backend**: Check Railway deployment logs
3. **Test database**: Verify MongoDB Atlas connection
4. **Test authentication**: Try Google OAuth login

### 7.3 Create Admin User
1. **Use the API endpoint** to create an admin user:
```bash
curl -X POST https://YOUR_FRIEND_RAILWAY_APP.railway.app/api/auth/create-admin \
  -H "Content-Type: application/json" \
  -d '{
    "name": "Admin User",
    "email": "admin@eventify.com",
    "username": "admin",
    "password": "admin123"
  }'
```

---

## 🎯 Step 8: Customization

### 8.1 Update Branding
1. **Update app name** in `frontend/public/index.html`
2. **Update favicon** in `frontend/public/`
3. **Update logo** and branding colors
4. **Update email templates** in `backend/src/utils/email.js`

### 8.2 Update Domain (Optional)
1. **Add custom domain** to Firebase hosting
2. **Update CORS settings** in backend
3. **Update environment variables** with new domain

---

## 🔍 Troubleshooting

### Common Issues

#### Frontend Issues
- **Build fails**: Check Node.js version and dependencies
- **Firebase deploy fails**: Verify Firebase CLI installation and login
- **Authentication not working**: Check Firebase config and authorized domains

#### Backend Issues
- **Railway deployment fails**: Check environment variables and dependencies
- **Database connection fails**: Verify MongoDB Atlas connection string
- **CORS errors**: Check CLIENT_ORIGIN environment variable

#### Database Issues
- **Connection timeout**: Check MongoDB Atlas network access
- **Authentication failed**: Verify database username and password
- **Collection not found**: Database will be created automatically

### Support
- **Firebase Documentation**: [https://firebase.google.com/docs](https://firebase.google.com/docs)
- **Railway Documentation**: [https://docs.railway.app/](https://docs.railway.app/)
- **MongoDB Atlas Documentation**: [https://docs.atlas.mongodb.com/](https://docs.atlas.mongodb.com/)

---

## 🎉 Success!

Once all steps are completed, your friend will have:

✅ **Fully deployed Eventify platform**
✅ **Custom Firebase hosting**
✅ **Railway backend deployment**
✅ **MongoDB Atlas database**
✅ **Google OAuth authentication**
✅ **Complete admin panel**
✅ **Real-time features**

**Live URLs:**
- **Frontend**: `https://YOUR_FRIEND_FIREBASE_APP.web.app`
- **Backend**: `https://YOUR_FRIEND_RAILWAY_APP.railway.app`
- **Admin Panel**: `https://YOUR_FRIEND_FIREBASE_APP.web.app/admin-dashboard`

---

## 📞 Support

If you encounter any issues during deployment:

1. **Check the troubleshooting section above**
2. **Review deployment logs** in Railway and Firebase
3. **Verify environment variables** are correctly set
4. **Test each component** individually

**Good luck with your deployment! 🚀**
