# 🐍 PyNotebook - Interactive Python Dashboard

An advanced web-based Python environment that runs entirely in your browser using Pyodide (CPython compiled to WebAssembly). This is a Jupyter Notebook alternative with a beautiful, modern interface.

## ✨ Features

- **🐍 Full Python Runtime**: Run Python 3.11+ directly in your browser using Pyodide
- **📊 Data Visualization**: Create beautiful plots with matplotlib and seaborn
- **📈 Data Analysis**: Analyze data with pandas and numpy
- **🎨 Interactive Canvas**: Draw graphics with HTML5 Canvas
- **💻 Code Editor**: Write and execute Python code with syntax highlighting
- **📱 Responsive Design**: Works on desktop and mobile devices
- **🎨 Modern UI**: Beautiful color scheme (green/orange/teal theme)

## 🚀 Quick Start

### Option 1: Using Python Server (Recommended)

1. Make sure you have Python 3.7+ installed
2. Navigate to the project directory:
   ```bash
   cd "C:\Users\nunus\OneDrive\Desktop\python project"
   ```
3. Run the server:
   ```bash
   python -m http.server 8000
   ```
   Or use the provided script:
   ```bash
   python server.py
   ```
   Or double-click: `start_server.bat` (Windows)
4. Open your browser and go to: `http://localhost:8000/index.html`

### Option 2: Using Node.js http-server

```bash
npx http-server -p 8000
```

Then open `http://localhost:8000/index.html` in your browser.

### Option 3: Using Python's Built-in Server

```bash
python -m http.server 8000
```

Then open `http://localhost:8000/index.html` in your browser.

## 📦 Technologies Used

- **Pyodide**: CPython compiled to WebAssembly for running Python in the browser
- **PyScript**: Python-HTML integration framework
- **matplotlib**: Data visualization library
- **seaborn**: Statistical data visualization
- **pandas**: Data manipulation and analysis
- **numpy**: Numerical computing
- **scipy**: Scientific computing
- **HTML5 Canvas**: Interactive drawing capabilities

## 🎯 Usage Examples

### Basic Plotting
```python
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 100)
y = np.sin(x)

plt.figure(figsize=(10, 6))
plt.plot(x, y, color='#00c896', linewidth=2)
plt.title('Sine Wave')
plt.grid(True, alpha=0.3)
plt.show()
```

### Data Analysis
```python
import pandas as pd
import numpy as np
import seaborn as sns

# Create sample data
data = pd.DataFrame({
    'x': np.random.randn(100),
    'y': np.random.randn(100)
})

# Visualize
sns.scatterplot(data=data, x='x', y='y')
plt.show()
```

### Canvas Drawing
Use the interactive canvas section to draw with your mouse, or use Python to draw programmatically.

## 🎨 Color Scheme

The interface uses a modern color palette:
- **Primary**: Teal/Green (#00c896)
- **Secondary**: Orange (#ff6b35)
- **Accent**: Amber (#f7931e)
- **Success**: Bright Green (#00ff88)
- **Dark Theme**: Dark backgrounds for reduced eye strain

## 📝 Notes

- The first load may take a few seconds as Pyodide downloads and initializes
- All code runs entirely in your browser - no server-side processing required
- Your code and data stay local - nothing is sent to external servers
- Some advanced features may have limitations compared to native Python

## 🔧 Troubleshooting

- **Plots not showing**: Make sure to call `plt.show()` at the end of your plotting code
- **Slow performance**: Large datasets may run slowly in the browser. Consider using smaller samples for testing
- **Module not found**: Some Python packages may not be available in Pyodide. Check the Pyodide package list

## 📄 License

This project is open source and available for educational and personal use.

## 🙏 Credits

Built with:
- [Pyodide](https://pyodide.org/)
- [PyScript](https://pyscript.net/)
- [matplotlib](https://matplotlib.org/)
- [seaborn](https://seaborn.pydata.org/)

---

Enjoy coding Python in your browser! 🎉
