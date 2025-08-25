# 🚀 DeepTCR Development Environment Setup Guide

## 📋 **Project Overview**
This is the development setup guide for **DeepTCR v2.1.27** - a deep learning framework for T-Cell Receptor analysis.

**Project Location**: `/Users/ali/Downloads/Maj_Papers/New TCR/OldDeepTCR/DeepTCR-master`

---

## 🖥️ **System Requirements**

### **Operating System**
- **macOS** (Apple Silicon/Intel) ✅ Tested
- **Linux** (Ubuntu 18.04+) ⚠️ Requires TensorFlow adjustment
- **Windows** (10/11) ⚠️ Requires TensorFlow adjustment

### **Hardware Requirements**
- **RAM**: 8GB minimum, 16GB+ recommended
- **Storage**: 5GB+ free space
- **GPU**: Optional but recommended (Apple Metal/NVIDIA CUDA)

### **Software Requirements**
- **Python**: 3.9-3.11 (tested with 3.10)
- **pip**: Latest version
- **Git**: For version control

---

## ⚡ **Quick Setup (5 Minutes)**

### **Step 1: Clone & Navigate**
```bash
git clone <your-repo-url>
cd DeepTCR-master
```

### **Step 2: Create Virtual Environment**
```bash
# Create virtual environment
python -m venv .venv

# Activate it
source .venv/bin/activate  # macOS/Linux
# OR
.venv\Scripts\activate     # Windows
```

### **Step 3: Install Dependencies**
```bash
# Install exact dependencies
pip install -r requirements-exact.txt

# Install DeepTCR in development mode
pip install -e .
```

### **Step 4: Verify Installation**
```bash
python -c "import DeepTCR; print('✅ DeepTCR installed successfully!')"
jupyter lab  # Launch development environment
```

---

## 📦 **Dependency Files**

### **requirements-exact.txt** (Platform-Specific)
```txt
# Apple Silicon (macOS M1/M2/M3) - CURRENT SETUP
tensorflow-macos==2.12.0
tensorflow-metal==0.8.0

# Intel macOS / Linux / Windows (uncomment if needed)
# tensorflow==2.12.0

# Core Scientific Computing
numpy==1.23.5
pandas==1.5.3
scipy==1.10.1
h5py==3.8.0

# Machine Learning
scikit-learn==1.2.2
keras==2.12.0

# Bioinformatics
biopython==1.76

# Visualization
matplotlib==3.7.2
seaborn==0.12.2
logomaker==0.8
pillow==11.3.0

# Analysis Tools
umap-learn==0.5.5
networkx==3.1
distinctipy==1.2.1

# Development Tools
jupyterlab==4.4.6
notebook==7.4.5
ipykernel==6.29.5
ipywidgets==8.1.2

# Utilities
tqdm==4.66.4
psutil==7.0.0
```

### **requirements.txt** (Cross-Platform)
```txt
# Choose TensorFlow based on your platform:
# Apple Silicon: tensorflow-macos==2.12.0 + tensorflow-metal==0.8.0
# Others: tensorflow==2.12.0

numpy>=1.23.0,<1.24.0
pandas>=1.5.0,<1.6.0
scipy>=1.10.0,<1.11.0
scikit-learn>=1.2.0,<1.3.0
matplotlib>=3.7.0,<3.8.0
seaborn>=0.12.0,<0.13.0
biopython>=1.76,<1.77
umap-learn>=0.5.0,<0.6.0
networkx>=3.1,<3.2
logomaker>=0.8,<0.9
jupyterlab>=4.4.0,<4.5.0
tqdm>=4.66.0,<4.67.0
```

---

## 🛠️ **Development Workflow**

### **Daily Development**
```bash
# 1. Activate environment
source .venv/bin/activate

# 2. Start Jupyter Lab
jupyter lab

# 3. Run tests (if available)
python -m pytest tests/

# 4. Install new dependencies
pip install <package>
pip freeze > requirements-exact.txt  # Update dependencies
```

### **Code Structure**
```
DeepTCR-master/
├── DeepTCR/                 # Main package
│   ├── __init__.py
│   ├── DeepTCR.py          # Core classes
│   └── functions/          # Utility functions
├── tutorials/              # Jupyter notebooks
├── Data/                   # Sample datasets
├── requirements.txt        # Dependencies
└── setup.py               # Package configuration
```

---

## 🔧 **Platform-Specific Instructions**

### **Apple Silicon (M1/M2/M3) - CURRENT SETUP**
```bash
# Use the exact current setup
pip install tensorflow-macos==2.12.0
pip install tensorflow-metal==0.8.0
```

### **Intel Mac / Linux**
```bash
# Replace TensorFlow packages
pip install tensorflow==2.12.0
```

### **Windows**
```bash
# Same as Intel Mac/Linux
pip install tensorflow==2.12.0
```

### **GPU Support**
- **Apple Silicon**: Automatic with `tensorflow-metal`
- **NVIDIA GPU**: Install `tensorflow-gpu` instead
- **CPU Only**: Use `tensorflow` (CPU version)

---

## 🧪 **Testing Your Setup**

### **Basic Functionality Test**
```python
import DeepTCR
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# Test data loading
print("✅ All imports successful!")

# Test TensorFlow GPU (Apple Silicon)
import tensorflow as tf
print(f"✅ TensorFlow version: {tf.__version__}")
print(f"✅ GPU available: {tf.config.list_physical_devices('GPU')}")
```

### **Run Tutorial**
```bash
# Navigate to tutorials
cd tutorials

# Start with basic tutorial
jupyter notebook "1 - Loading Data (Introduction).ipynb"
```

---

## 🚨 **Common Issues & Solutions**

### **TensorFlow Installation Issues**
```bash
# Clear pip cache
pip cache purge

# Reinstall TensorFlow
pip uninstall tensorflow tensorflow-macos tensorflow-metal
pip install tensorflow-macos==2.12.0 tensorflow-metal==0.8.0
```

### **Import Errors**
```bash
# Reinstall DeepTCR in development mode
pip uninstall DeepTCR
pip install -e .
```

### **Jupyter Kernel Issues**
```bash
# Register kernel
python -m ipykernel install --user --name=deeptcr-env
```

---

## 📚 **Additional Resources**

- **Original Paper**: [DeepTCR on Nature Communications](https://www.nature.com/articles/s41467-021-21879-w)
- **GitHub**: [DeepTCR Repository](https://github.com/sidhomj/DeepTCR)
- **Documentation**: See `tutorials/` directory

---

## 🤝 **Sharing This Project**

### **For Git Repository**
1. Add these files to your repo:
   - `requirements-exact.txt`
   - `DEVELOPER_SETUP_GUIDE.md`
   - `.gitignore` (exclude `.venv/`, `__pycache__/`)

### **For Direct Sharing**
1. **Zip the project folder** (exclude `.venv/`)
2. **Include this setup guide**
3. **Share the requirements files**

### **For Collaborators**
```bash
# They should run:
git clone <your-repo>
cd DeepTCR-master
python -m venv .venv
source .venv/bin/activate
pip install -r requirements-exact.txt
pip install -e .
```

---

## ✅ **Verification Checklist**

- [ ] Python 3.9+ installed
- [ ] Virtual environment created and activated
- [ ] All dependencies installed from `requirements-exact.txt`
- [ ] DeepTCR installed in development mode (`pip install -e .`)
- [ ] TensorFlow working with GPU (if available)
- [ ] Jupyter Lab accessible
- [ ] Can import `DeepTCR` successfully
- [ ] Tutorials run without errors

---

**🎉 Setup Complete! You're ready to develop with DeepTCR!**
