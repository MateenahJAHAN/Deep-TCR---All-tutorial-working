# 🧬 **DeepTCR - Fully Working & Modernized Version**

<div align="center">

[![Python 3.9+](https://img.shields.io/badge/python-3.9+-blue.svg)](https://www.python.org/downloads/)
[![TensorFlow 2.12](https://img.shields.io/badge/TensorFlow-2.12-orange.svg)](https://tensorflow.org/)
[![Apple Silicon](https://img.shields.io/badge/Apple_Silicon-Optimized-green.svg)](https://developer.apple.com/metal/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

**🎉 100% Working Tutorials | Modern TensorFlow 2.x | Apple Silicon GPU Support | Production Ready**

</div>

---

## 🚀 **What Makes This Version Special?**

This is a **fully modernized and tested** version of DeepTCR with **ALL tutorials working perfectly**. We've updated the original DeepTCR to work seamlessly with modern Python environments and TensorFlow 2.x.

### **✅ Key Improvements**
- ✅ **TensorFlow 2.12 Compatible** - No more compatibility issues
- ✅ **Apple Silicon Optimized** - Full Metal GPU acceleration support
- ✅ **All 11 Tutorials Working** - Verified end-to-end functionality
- ✅ **Modern Python 3.9+** - Updated dependencies and best practices
- ✅ **Complete Documentation** - Step-by-step setup guides
- ✅ **Production Ready** - Stable environment with proper dependency management

---

## 📚 **About DeepTCR**

DeepTCR is a powerful Python package with a comprehensive collection of **unsupervised and supervised deep learning methods** for parsing T-Cell Receptor Sequencing (TCRSeq) data. 

### **🔬 Core Capabilities**
- **Unsupervised Learning**: VAE training, clustering, motif discovery
- **Supervised Learning**: Sequence classification, repertoire classification, regression
- **Advanced Features**: Paired α/β chain analysis, V/D/J gene integration, HLA context
- **Visualization**: Comprehensive plotting and analysis tools

---

## 🎯 **Verified Functionality**

### **📊 Testing Results (August 25, 2024)**
- ✅ **11/11 Tutorials Working** (100% success rate)
- ✅ **GPU Acceleration Confirmed** (Apple Metal)
- ✅ **2+ Hours Continuous Testing** (No crashes)
- ✅ **All Model Types Functional** (VAE, Classifiers, Regression)

See **[TESTING_VERIFICATION.md](TESTING_VERIFICATION.md)** for complete testing evidence.

---

## 🚀 **Quick Start (5 Minutes)**

### **Installation**
```bash
# Clone the repository
git clone https://github.com/MateenahJAHAN/Deep-TCR---All-tutorial-working.git
cd Deep-TCR---All-tutorial-working

# Create virtual environment
python -m venv .venv
source .venv/bin/activate  # macOS/Linux
# .venv\Scripts\activate   # Windows

# Install dependencies
pip install -r requirements-exact.txt

# Install DeepTCR in development mode
pip install -e .

# Verify installation
python -c "import DeepTCR; print('✅ DeepTCR ready!')"
```

### **Launch Tutorials**
```bash
# Start Jupyter notebook
jupyter notebook

# Navigate to tutorials/ folder
# All tutorials are guaranteed to work!
```

---

## 📚 **Tutorial Overview**

### **🎓 Supervised Learning** (3 Tutorials)
1. **Sequence Classification** - Classify individual TCR sequences
2. **Repertoire Classification** - Analyze entire TCR repertoires  
3. **Sequence Regression** - Predict continuous values from sequences

### **🔬 Unsupervised Learning** (8 Tutorials)
1. **Training VAE** - Variational Autoencoder for TCR data
2. **Clustering TCRSeq Data** - Discover TCR clusters
3. **Sequence & Repertoire Heatmaps** - Visualization analysis
4. **Structural Diversity Assessment** - Measure repertoire diversity
5. **Visualization of Results** - Publication-quality plots
6. **KNN Classification** - K-nearest neighbor analysis
7. **Motif Identification** - Discover sequence motifs
8. **VAE Inference** - Use trained models for inference

---

## 🖥️ **System Requirements**

### **Minimum Requirements**
- **Python**: 3.9+ (tested with 3.10)
- **RAM**: 8GB (16GB recommended)
- **Storage**: 2GB free space
- **OS**: macOS, Linux, Windows

### **Optimal Performance**
- **GPU**: Apple Silicon (M1/M2/M3) or NVIDIA CUDA
- **RAM**: 16GB+
- **Python**: 3.10 or 3.11

---

## 🔧 **Platform-Specific Setup**

### **Apple Silicon (M1/M2/M3) - RECOMMENDED**
```bash
# Use the provided requirements-exact.txt
pip install -r requirements-exact.txt
# Includes: tensorflow-macos + tensorflow-metal
```

### **Intel Mac / Linux / Windows**
```bash
# Use cross-platform requirements
pip install -r requirements-crossplatform.txt
# Edit file to uncomment: tensorflow==2.12.0
# Comment out: tensorflow-macos, tensorflow-metal
```

---

## 📖 **Documentation**

### **Essential Files**
- **[DEVELOPER_SETUP_GUIDE.md](DEVELOPER_SETUP_GUIDE.md)** - Complete setup instructions
- **[TESTING_VERIFICATION.md](TESTING_VERIFICATION.md)** - Proof that everything works
- **[requirements-exact.txt](requirements-exact.txt)** - Exact working dependencies
- **[requirements-crossplatform.txt](requirements-crossplatform.txt)** - Cross-platform compatible

### **Data Requirements**
DeepTCR accepts multiple data formats:
- **Standard TCR sequences** (CDR3 amino acid sequences)
- **Paired α/β chains** (for complete TCR analysis)
- **V/D/J gene usage** (additional genetic context)
- **HLA information** (MHC context for repertoires)

---

## 🧪 **Usage Examples**

### **Basic VAE Training**
```python
import DeepTCR

# Load data
dtcr = DeepTCR.DeepTCR_U('VAE_Model')
dtcr.Get_Data(directory='Data/Murine_Antigens', Load_Prev_Data=False)

# Train VAE
dtcr.Train_VAE(Load_Prev_Data=False)

# Get latent features
features = dtcr.VAE_Inference()
```

### **Supervised Classification**
```python
import DeepTCR

# Load data with labels
dtcr = DeepTCR.DeepTCR_SS('Classifier')
dtcr.Get_Data(directory='Data/Murine_Antigens', Load_Prev_Data=False)

# Train classifier
dtcr.Train(epochs_min=10)

# Make predictions
predictions = dtcr.Inference()
```

---

## 🏆 **Why Use This Version?**

### **vs. Original DeepTCR**
| Feature | Original DeepTCR | This Version |
|---------|------------------|--------------|
| **TensorFlow** | 1.x (deprecated) | 2.12 (modern) |
| **Installation** | Complex/broken | `pip install -r requirements.txt` |
| **Tutorials** | Many broken | ✅ 100% working |
| **Apple Silicon** | Not supported | ✅ Full GPU acceleration |
| **Documentation** | Minimal | ✅ Complete setup guides |
| **Dependencies** | Outdated | ✅ Modern, tested versions |

### **vs. Other TCR Tools**
- **More comprehensive** than single-purpose packages
- **Better documented** than academic research code
- **Easier to install** than complex frameworks
- **More stable** than experimental implementations

---

## 🤝 **Contributing & Support**

### **Getting Help**
1. **Check [TESTING_VERIFICATION.md](TESTING_VERIFICATION.md)** for known working configurations
2. **Review [DEVELOPER_SETUP_GUIDE.md](DEVELOPER_SETUP_GUIDE.md)** for troubleshooting
3. **Open an issue** with your system details and error messages

### **Contributing**
We welcome contributions! This version provides a solid foundation for:
- Additional analysis methods
- Performance optimizations  
- New visualization tools
- Extended data format support

---

## 📄 **License & Citation**

### **License**
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

### **Citation**
If you use this modernized DeepTCR version, please cite both:

**Original DeepTCR Paper:**
```bibtex
@article{sidhom2021deeptcr,
  title={DeepTCR is a deep learning framework for revealing sequence concepts within T-cell repertoires},
  author={Sidhom, John-William and Larman, H Benjamin and Pardoll, Drew M and Baras, Alexander S},
  journal={Nature Communications},
  volume={12},
  number={1},
  pages={1605},
  year={2021},
  publisher={Nature Publishing Group}
}
```

**This Modernized Version:**
```bibtex
@software{deeptcr_modernized2024,
  title={DeepTCR - Fully Working \& Modernized Version},
  author={Research Team},
  year={2024},
  url={https://github.com/MateenahJAHAN/Deep-TCR---All-tutorial-working}
}
```

---

## 🔬 **Research Applications**

DeepTCR enables cutting-edge research in:
- **🦠 Vaccine Development** - Identify protective T-cell responses
- **🎗️ Cancer Immunotherapy** - Discover tumor-reactive TCRs  
- **🔬 Autoimmune Disease** - Find self-reactive TCR patterns
- **📊 Clinical Diagnostics** - Develop TCR-based biomarkers
- **🧬 Immunological Studies** - Understand T-cell repertoire dynamics

---

## 📊 **Technical Specifications**

### **Supported Data Types**
- **File Formats**: TSV, CSV, TXT
- **Sequence Types**: CDR3α, CDR3β, paired chains
- **Additional Features**: V/D/J genes, HLA alleles, frequency data
- **Label Types**: Categorical, continuous, multi-class

### **Model Architectures**
- **VAE**: Variational Autoencoders with customizable latent dimensions
- **CNN**: Convolutional networks for sequence classification
- **LSTM**: Recurrent networks for sequence modeling
- **Ensemble**: Multi-model inference capabilities

---

<div align="center">

## 🎯 **Ready to Analyze TCR Data?**

**[📥 Clone Repository](https://github.com/MateenahJAHAN/Deep-TCR---All-tutorial-working.git)** | **[📚 View Tutorials](tutorials/)** | **[🔧 Setup Guide](DEVELOPER_SETUP_GUIDE.md)** | **[✅ Testing Proof](TESTING_VERIFICATION.md)**

**🧬 Unlock the secrets hidden in T-cell receptor data with confidence!**

</div>

<!-- portfolio-navigation -->
## Repository guide

- **Code and notebooks** · [setup.py](setup.py), [setup.sh](setup.sh), [ancillary_analysis](ancillary_analysis), [DeepTCR](DeepTCR), [tools](tools)
- **Data** · [Data](Data), [GLIPH.csv](ancillary_analysis/unsupervised/GLIPH.csv), [Supertype_Data_Dict.csv](DeepTCR/functions/Supertype_Data_Dict.csv)
- **Documentation and notes** · [DEVELOPER_SETUP_GUIDE.md](DEVELOPER_SETUP_GUIDE.md), [TEAM_SETUP_GUIDE.md](TEAM_SETUP_GUIDE.md), [TESTING_VERIFICATION.md](TESTING_VERIFICATION.md), [docs](docs)

<!-- /portfolio-navigation -->

