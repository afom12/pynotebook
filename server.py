#!/usr/bin/env python3
"""
Simple HTTP server to run the PyNotebook application locally.
This is needed because PyScript requires files to be served over HTTP.
"""

import http.server
import socketserver
import webbrowser
import os
from pathlib import Path

PORT = 8000

class MyHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        # Add CORS headers for PyScript
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS')
        self.send_header('Access-Control-Allow-Headers', 'Content-Type')
        super().end_headers()
    
    def log_message(self, format, *args):
        # Custom logging to see requests
        print(f"{self.address_string()} - {format % args}")

def main():
    # Change to the directory where this script is located
    os.chdir(Path(__file__).parent)
    
    Handler = MyHTTPRequestHandler
    
    with socketserver.TCPServer(("", PORT), Handler) as httpd:
        print(f"🚀 PyNotebook server starting...")
        print(f"📡 Server running at http://localhost:{PORT}/")
        print(f"🌐 Opening browser automatically...")
        print(f"⏹️  Press Ctrl+C to stop the server")
        print("-" * 50)
        
        # Open browser automatically
        webbrowser.open(f'http://localhost:{PORT}/index.html')
        
        try:
            httpd.serve_forever()
        except KeyboardInterrupt:
            print("\n\n🛑 Server stopped.")
            httpd.shutdown()

if __name__ == "__main__":
    main()
