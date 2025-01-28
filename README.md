# Mantis-ML-NDD

This repository provides the code from our article, *Genome-wide Prediction of Dominant and Recessive NDD Risk Genes* (Dhindsa et al., 2025), including a practical implementation example using our ASD monoallelic model. Building on the [mantis-ml framework](https://github.com/astrazeneca-cgr-publications/mantis-ml-release) (Vitsios & Petrovski, 2020), we integrate single-cell RNA-seq data, inheritance-informed training, and additional feature sets to enhance the prioritization of neurodevelopmental disorder (NDD) risk genes.

## Key Enhancements

- Inheritance-specific seed gene curation  
- Single-cell RNA-seq data from developing human cortex  
- Human Protein Atlas expression data  
- Gene Variation Intolerance Rank (GeVIR)  
- Model-specific GO features reflecting the functional context of seed genes  


## Setup

```bash
# Create and activate conda environment
conda create -n mantis-ml-ndd python==3.7
conda activate mantis-ml-ndd

# Install package in development mode
python -m pip install -e .

```
## Running the pipeline
1. Install Nextflow if you don't already have it:

```bash
conda install -c bioconda nextflow
```
2. Run the main pipeline:

```bash
nextflow run main.nf
```



## Complete Results
The full set of predictions for all five models (monoallelic ASD/DD/DEE and biallelic DD/DEE) is available at https://nddgenes.com.
### References

- Our implementation: "Genome-wide prediction of dominant and recessive neurodevelopmental disorder risk genes" (Dhindsa et al., 2025)
- Original mantis-ml framework: https://github.com/astrazeneca-cgr-publications/mantis-ml-release
- Original paper: Vitsios & Petrovski (2020). "Mantis-ml: Disease-Agnostic Gene Prioritization from High-Throughput Genomic Screens by Stochastic Semi-supervised Learning"