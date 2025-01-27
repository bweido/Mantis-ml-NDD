# Mantis-ML-NDD: Genome-wide Prediction of Dominant and Recessive NDD Risk Genes

This repository extends the [mantis-ml framework](https://github.com/astrazeneca-cgr-publications/mantis-ml-release) (Vitsios & Petrovski, 2020) to prioritize neurodevelopmental disorder (NDD) risk genes. Our enhancements integrate single-cell expression data, inheritance-informed training, and other NDD-specific modifications.While our paper (Dhindsa et al., 2024) details five comprehensive inheritance-specific models for neurodevelopmental disorders, here we provide a practical implementation example using our ASD monoallelic model.

## Key Enhancements

- Inheritance-specific seed gene curation  
- Single-cell RNA-seq data from developing human cortex  
- Human Protein Atlas expression data  
- Gene Variation Intolerance Rank (GeVIR) 
- Custom GO term feature selection  

## Setup

```bash
# Create and activate conda environment
conda create -n mantis-ml-ndd python==3.7
conda activate mantis-ml-ndd

# Install package in development mode
python -m pip install -e .

```
## Complete Results
The full set of predictions for all five models (monoallelic ASD/DD/DEE and biallelic DD/DEE) is available at https://nddgenes.com.
### References

- Our implementation: "Genome-wide prediction of dominant and recessive neurodevelopmental disorder risk genes" (Dhindsa et al., 2025)
- Original mantis-ml framework: https://github.com/astrazeneca-cgr-publications/mantis-ml-release
- Original paper: Vitsios & Petrovski (2020). "Mantis-ml: Disease-Agnostic Gene Prioritization from High-Throughput Genomic Screens by Stochastic Semi-supervised Learning"