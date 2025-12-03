# Troubleshooting Guide

## Server Status
✅ Server is running on port 8000

## Steps to Fix

### 1. Test Basic Server Connection
First, verify the server is working:
- Open: http://localhost:8000/test.html
- If you see "Server is working!", the server is fine

### 2. Access the Main Application
- Open: http://localhost:8000/index.html
- Or just: http://localhost:8000/ (should auto-load index.html)

### 3. Common Issues and Solutions

#### Issue: Page loads but Python doesn't work
**Solution**: Wait 10-30 seconds for Pyodide to download and initialize. You should see a loading indicator.

#### Issue: "Failed to load resource" errors
**Solution**: 
- Check your internet connection (PyScript loads from CDN)
- Try refreshing the page (Ctrl+F5 to hard refresh)
- Check browser console (F12) for specific errors

#### Issue: Blank page
**Solution**:
- Open browser Developer Tools (F12)
- Check Console tab for JavaScript errors
- Check Network tab to see if resources are loading

#### Issue: Port already in use
**Solution**: 
```bash
# Kill process on port 8000 (Windows)
netstat -ano | findstr :8000
taskkill /PID <PID> /F

# Or use a different port
python -m http.server 8080
```

### 4. Browser Compatibility
- ✅ Chrome/Edge (recommended)
- ✅ Firefox
- ✅ Safari
- ⚠️ Some features may not work in older browsers

### 5. Clear Browser Cache
- Press Ctrl+Shift+Delete
- Clear cached images and files
- Or use Incognito/Private mode

### 6. Check Browser Console
Press F12 and look for:
- Red errors (these indicate problems)
- Yellow warnings (usually OK)
- Network tab should show resources loading

### 7. Alternative: Use Different Port
If port 8000 has issues:
```bash
python -m http.server 8080
```
Then access: http://localhost:8080/index.html

## Still Not Working?

1. Check if index.html exists in the project folder
2. Verify you're in the correct directory when starting the server
3. Try accessing http://localhost:8000/ directly (should list files)
4. Check Windows Firewall isn't blocking localhost connections
