#!/bin/bash

# 🚀 Eventify New Deployment Setup Script
# This script helps transfer the Eventify project to a friend's accounts

echo "🎉 Welcome to Eventify Deployment Setup!"
echo "========================================"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${GREEN}✅ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

print_error() {
    echo -e "${RED}❌ $1${NC}"
}

print_info() {
    echo -e "${BLUE}ℹ️  $1${NC}"
}

# Check if git is installed
if ! command -v git &> /dev/null; then
    print_error "Git is not installed. Please install Git first."
    exit 1
fi

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    print_error "Node.js is not installed. Please install Node.js first."
    exit 1
fi

print_status "Prerequisites check passed!"

echo ""
echo "📋 Please provide the following information:"
echo "============================================"

# Get friend's GitHub username
read -p "Enter your friend's GitHub username: " GITHUB_USERNAME

# Get friend's Firebase project ID
read -p "Enter your friend's Firebase project ID: " FIREBASE_PROJECT_ID

# Get friend's Railway app URL
read -p "Enter your friend's Railway app URL (e.g., https://app-name.railway.app): " RAILWAY_URL

# Get friend's MongoDB connection string
read -p "Enter your friend's MongoDB connection string: " MONGODB_URI

# Get friend's email for notifications
read -p "Enter your friend's email for notifications: " EMAIL_USER

# Get friend's email app password
read -p "Enter your friend's email app password: " EMAIL_PASS

# Generate a random JWT secret
JWT_SECRET=$(openssl rand -base64 32)

echo ""
print_info "Setting up the project..."

# Update frontend environment
echo "VITE_API_BASE_URL=$RAILWAY_URL" > frontend/.env
print_status "Frontend environment file created"

# Update backend environment
cat > backend/.env << EOF
MONGODB_URI=$MONGODB_URI
JWT_SECRET=$JWT_SECRET
CLIENT_ORIGIN=https://$FIREBASE_PROJECT_ID.web.app
EMAIL_USER=$EMAIL_USER
EMAIL_PASS=$EMAIL_PASS
PORT=4000
NODE_ENV=production
EOF
print_status "Backend environment file created"

# Update Firebase config template
cat > frontend/src/lib/firebase-template.js << EOF
// Replace this with your friend's Firebase config
// Get this from Firebase Console > Project Settings > General > Your apps
const firebaseConfig = {
  apiKey: "YOUR_FRIEND_API_KEY",
  authDomain: "$FIREBASE_PROJECT_ID.firebaseapp.com",
  projectId: "$FIREBASE_PROJECT_ID",
  storageBucket: "$FIREBASE_PROJECT_ID.firebasestorage.app",
  messagingSenderId: "YOUR_FRIEND_SENDER_ID",
  appId: "YOUR_FRIEND_APP_ID",
  measurementId: "YOUR_FRIEND_MEASUREMENT_ID"
};
EOF
print_status "Firebase config template created"

# Create deployment instructions
cat > DEPLOYMENT_INSTRUCTIONS.md << EOF
# 🚀 Quick Deployment Instructions

## 1. Update Firebase Config
Replace the content in \`frontend/src/lib/firebase.js\` with your friend's Firebase config from:
Firebase Console > Project Settings > General > Your apps

## 2. Push to GitHub
\`\`\`bash
git add .
git commit -m "Setup for new deployment"
git push origin main
\`\`\`

## 3. Deploy Frontend
\`\`\`bash
cd frontend
npm install
npm run build
firebase deploy --only hosting
\`\`\`

## 4. Deploy Backend
Railway will automatically deploy when you push to GitHub.

## 5. Create Admin User
\`\`\`bash
curl -X POST $RAILWAY_URL/api/auth/create-admin \\
  -H "Content-Type: application/json" \\
  -d '{
    "name": "Admin User",
    "email": "admin@eventify.com",
    "username": "admin",
    "password": "admin123"
  }'
\`\`\`

## 6. Test the Application
- Frontend: https://$FIREBASE_PROJECT_ID.web.app
- Backend: $RAILWAY_URL
- Admin Panel: https://$FIREBASE_PROJECT_ID.web.app/admin-dashboard

## Environment Variables Set:
- Frontend API URL: $RAILWAY_URL
- Firebase Project: $FIREBASE_PROJECT_ID
- MongoDB: [Configured]
- JWT Secret: [Generated]
- Email: $EMAIL_USER
EOF
print_status "Deployment instructions created"

# Create a summary
echo ""
echo "🎉 Setup Complete!"
echo "=================="
print_status "Environment files created"
print_status "Firebase config template ready"
print_status "Deployment instructions generated"
echo ""
print_info "Next steps:"
echo "1. Update Firebase config in frontend/src/lib/firebase.js"
echo "2. Push changes to GitHub: git add . && git commit -m 'Setup' && git push"
echo "3. Deploy frontend: cd frontend && npm run build && firebase deploy"
echo "4. Create admin user using the curl command in DEPLOYMENT_INSTRUCTIONS.md"
echo ""
print_info "Your friend's deployment URLs will be:"
echo "- Frontend: https://$FIREBASE_PROJECT_ID.web.app"
echo "- Backend: $RAILWAY_URL"
echo "- Admin Panel: https://$FIREBASE_PROJECT_ID.web.app/admin-dashboard"
echo ""
print_warning "Don't forget to update the README.md with the new URLs!"
echo ""
echo "🚀 Good luck with the deployment!"
