# Quick Start Guide - Fixing "File Not Found" Error

## ✅ Solution: Run Server from Project Directory

The server MUST be started from the project directory. Follow these steps:

### Method 1: Using PowerShell (Recommended)

1. Open PowerShell
2. Navigate to the project:
   ```powershell
   cd "C:\Users\nunus\OneDrive\Desktop\python project"
   ```
3. Start the server:
   ```powershell
   python -m http.server 8000
   ```
4. Open browser: http://localhost:8000/index.html

### Method 2: Using the Batch File

1. Double-click `start_server.bat` in the project folder
2. Browser should open automatically

### Method 3: Using Python Script

1. Open PowerShell in the project directory
2. Run:
   ```powershell
   python server.py
   ```

## 🔍 Verify Server is Running

After starting the server, you should see:
```
Serving HTTP on :: port 8000 (http://[::]:8000/) ...
```

## 🌐 Access the Application

Once the server is running:
- Open: http://localhost:8000/index.html
- Or: http://localhost:8000/ (should auto-load index.html)

## ⚠️ Common Issues

### Issue: "File not found" or 404 error
**Solution**: Make sure you're running the server from the project directory where `index.html` exists.

### Issue: Port 8000 already in use
**Solution**: 
```powershell
# Kill process on port 8000
netstat -ano | findstr :8000
taskkill /PID <PID> /F

# Or use a different port
python -m http.server 8080
```

### Issue: Python not found
**Solution**: Make sure Python is installed and in your PATH. Test with:
```powershell
python --version
```

## 📝 Current Directory Check

To verify you're in the right directory, run:
```powershell
dir index.html
```

You should see `index.html` listed. If not, navigate to the project directory first.

