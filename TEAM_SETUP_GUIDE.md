# 👥 **Team Setup Guide - DeepTCR in VS Code**

## 🚀 **Quick Setup for Team Members**

This guide helps your team members set up and use the DeepTCR project in **VS Code with Jupyter notebooks**.

---

## 📋 **Prerequisites**

### **Required Software**
- **Python 3.9+** (recommended: 3.10 or 3.11)
- **VS Code** with extensions:
  - Python extension
  - Jupyter extension
- **Git** (for cloning the repository)

### **System Requirements**
- **RAM**: 8GB minimum (16GB recommended)
- **Storage**: 2GB free space
- **OS**: Windows, macOS, or Linux

---

## ⚡ **Step-by-Step Setup**

### **Step 1: Clone the Repository**
```bash
# Open terminal/command prompt and run:
git clone https://github.com/MateenahJAHAN/Deep-TCR---All-tutorial-working.git

# Navigate to the project
cd Deep-TCR---All-tutorial-working
```

### **Step 2: Open in VS Code**
```bash
# Open the project in VS Code
code .

# Or manually: File → Open Folder → Select the project folder
```

### **Step 3: Set Up Python Environment**

#### **Option A: Using VS Code Terminal**
1. **Open VS Code terminal**: `View` → `Terminal` or `Ctrl+`` (backtick)
2. **Create virtual environment**:
   ```bash
   python -m venv .venv
   ```
3. **Activate the environment**:
   ```bash
   # Windows:
   .venv\Scripts\activate
   
   # macOS/Linux:
   source .venv/bin/activate
   ```

#### **Option B: Using VS Code Command Palette**
1. **Press** `Ctrl+Shift+P` (Windows) or `Cmd+Shift+P` (macOS)
2. **Type**: `Python: Create Environment`
3. **Select**: `Venv`
4. **Choose**: Python interpreter (3.9+)
5. **Select**: `requirements-exact.txt` when prompted

### **Step 4: Install Dependencies**
```bash
# Make sure virtual environment is activated (you should see (.venv) in terminal)
pip install -r requirements-exact.txt

# Install DeepTCR in development mode
pip install -e .
```

### **Step 5: Configure VS Code Python Interpreter**
1. **Press** `Ctrl+Shift+P` (Windows) or `Cmd+Shift+P` (macOS)
2. **Type**: `Python: Select Interpreter`
3. **Choose**: `.venv/Scripts/python.exe` (Windows) or `.venv/bin/python` (macOS/Linux)

---

## 🪐 **Running Jupyter Notebooks in VS Code**

### **Method 1: Direct Notebook Opening**
1. **Navigate** to `tutorials/` folder in VS Code Explorer
2. **Double-click** any `.ipynb` file (e.g., `1 - Training VAE.ipynb`)
3. **VS Code will automatically**:
   - Detect the notebook
   - Prompt to select kernel
   - Choose the `.venv` Python interpreter

### **Method 2: Jupyter Server (Alternative)**
1. **Open terminal** in VS Code
2. **Start Jupyter**:
   ```bash
   jupyter notebook
   ```
3. **VS Code will show**: "Jupyter server is running"
4. **Click notebooks** to open them in VS Code

### **Method 3: Using VS Code Jupyter Extension**
1. **Open Command Palette**: `Ctrl+Shift+P`
2. **Type**: `Jupyter: Create New Notebook`
3. **Select kernel**: Choose the `.venv` environment

---

## 📚 **Available Tutorials**

### **🎓 Supervised Learning** (3 tutorials)
- `tutorials/supervised/1 - Supervised Sequence Classification.ipynb`
- `tutorials/supervised/2 - Supervised Repertoire Classification.ipynb`  
- `tutorials/supervised/3 - Supervised Sequence Regression.ipynb`

### **🔬 Unsupervised Learning** (8 tutorials)
- `tutorials/unsupervised/1 - Training VAE.ipynb`
- `tutorials/unsupervised/2 - Clustering TCRSeq Data.ipynb`
- `tutorials/unsupervised/3 - Sequence & Repertoire Level Heatmaps.ipynb`
- `tutorials/unsupervised/4 - Structural Diversity Assessment.ipynb`
- `tutorials/unsupervised/5 - Visualization of Results.ipynb`
- `tutorials/unsupervised/6 - KNN Classification.ipynb`
- `tutorials/unsupervised/7 - Motif Identification.ipynb`
- `tutorials/unsupervised/8 - VAE Inference.ipynb`

---

## ✅ **Verification Steps**

### **Test 1: Python Import**
Create a new cell in any notebook and run:
```python
import DeepTCR
import tensorflow as tf
import numpy as np
import pandas as pd

print("✅ All imports successful!")
print(f"TensorFlow version: {tf.__version__}")
print(f"GPU available: {len(tf.config.list_physical_devices('GPU')) > 0}")
```

### **Test 2: Quick DeepTCR Test**
```python
# Test basic DeepTCR functionality
dtcr = DeepTCR.DeepTCR_U('test')
print("✅ DeepTCR initialized successfully!")
```

### **Expected Output**
```
✅ All imports successful!
TensorFlow version: 2.12.0
GPU available: True  # (if you have compatible GPU)
✅ DeepTCR initialized successfully!
```

---

## 🔧 **Platform-Specific Instructions**

### **Apple Silicon (M1/M2/M3 Macs)**
- **Use the provided** `requirements-exact.txt` as-is
- **GPU acceleration** automatically enabled with Metal
- **Expected message**: `Metal device set to: Apple M1/M2/M3`

### **Intel Mac / Linux / Windows**
1. **Edit** `requirements-crossplatform.txt`:
   ```bash
   # Comment out these lines:
   # tensorflow-macos==2.12.0
   # tensorflow-metal==0.8.0
   
   # Uncomment this line:
   tensorflow==2.12.0
   ```
2. **Install with**:
   ```bash
   pip install -r requirements-crossplatform.txt
   ```

---

## 🚨 **Troubleshooting**

### **Common Issues & Solutions**

#### **Issue**: "No module named 'DeepTCR'"
**Solution**:
```bash
# Make sure you're in the project directory and virtual environment is active
pip install -e .
```

#### **Issue**: "Kernel not found" in VS Code
**Solution**:
1. **Press** `Ctrl+Shift+P`
2. **Type**: `Python: Select Interpreter`
3. **Choose**: The `.venv` interpreter
4. **Restart** VS Code

#### **Issue**: "TensorFlow not found"
**Solution**:
```bash
# Check if virtual environment is active (should see (.venv))
# Then reinstall dependencies
pip install -r requirements-exact.txt
```

#### **Issue**: Notebooks won't run
**Solution**:
1. **Check kernel**: Click kernel selector in top-right of notebook
2. **Select**: `.venv` Python interpreter
3. **Restart kernel**: Click restart button in notebook toolbar

---

## 💡 **VS Code Tips for Jupyter**

### **Useful Shortcuts**
- **Run cell**: `Shift+Enter`
- **Run cell and insert below**: `Alt+Enter`
- **Add cell above**: `Ctrl+Shift+A`
- **Add cell below**: `Ctrl+Shift+B`
- **Delete cell**: `Ctrl+Shift+D`

### **VS Code Features**
- **Variable Explorer**: View variables in the Python Interactive window
- **Plot Viewer**: Interactive plots in separate windows
- **IntelliSense**: Auto-completion for Python code
- **Debugging**: Set breakpoints in notebook cells

---

## 📊 **Project Structure**

```
Deep-TCR---All-tutorial-working/
├── README.md                          # Main project documentation
├── DEVELOPER_SETUP_GUIDE.md          # Detailed setup instructions  
├── TESTING_VERIFICATION.md           # Proof that everything works
├── TEAM_SETUP_GUIDE.md              # This file - VS Code setup
├── requirements-exact.txt            # Exact working dependencies
├── requirements-crossplatform.txt   # Cross-platform dependencies
├── .gitignore                       # Git ignore rules
├── setup.py                         # Package configuration
├── DeepTCR/                         # Main package code
├── Data/                           # Sample datasets
├── tutorials/                      # Jupyter notebooks
│   ├── supervised/                # Supervised learning tutorials
│   └── unsupervised/             # Unsupervised learning tutorials
└── .venv/                         # Virtual environment (after setup)
```

---

## 🎯 **Workflow for Team Members**

### **Daily Workflow**
1. **Open VS Code** in project folder
2. **Activate environment**: Terminal shows `(.venv)`
3. **Open notebook**: Double-click `.ipynb` file
4. **Select kernel**: Choose `.venv` Python interpreter
5. **Run cells**: Use `Shift+Enter`

### **Sharing Results**
1. **Save notebook**: `Ctrl+S` (outputs are saved)
2. **Commit changes**: Use VS Code Git integration
3. **Push to GitHub**: Sync button in VS Code
4. **Share plots**: Export from notebook or save to `results/`

---

## 📞 **Getting Help**

### **If Something Doesn't Work**
1. **Check** `TESTING_VERIFICATION.md` for known working setup
2. **Review** `DEVELOPER_SETUP_GUIDE.md` for detailed troubleshooting
3. **Ask team lead** with:
   - Your OS and Python version
   - Error messages (screenshots helpful)
   - What you were trying to do

### **Resources**
- **Project README**: Complete project overview
- **VS Code Jupyter Docs**: https://code.visualstudio.com/docs/datascience/jupyter-notebooks
- **Python in VS Code**: https://code.visualstudio.com/docs/python/python-tutorial

---

## 🏆 **Success Criteria**

**You're ready to work when you can**:
- ✅ Open any tutorial notebook in VS Code
- ✅ Run all cells without errors
- ✅ See plots and outputs correctly
- ✅ Import DeepTCR successfully
- ✅ GPU acceleration working (if available)

---

<div align="center">

**🎉 Ready to analyze TCR data with your team!**

**Questions?** Check the documentation or ask your team lead!

</div>
