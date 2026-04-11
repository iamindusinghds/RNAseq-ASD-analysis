# RNA-seq Analysis of Autism Spectrum Disorder (ASD)

## Overview

This project performs RNA-seq analysis on ASD datasets to identify differentially expressed genes (DEGs) and correct batch effects across studies.

## Datasets

* GSE64018
* GSE102741

## Workflow

* Data preprocessing and dataset integration
* Differential expression analysis using DESeq2
* Batch effect correction using ComBat-seq

 ## Methods / Analysis Pipeline

1. Loaded raw RNA-seq count matrices  
2. Performed gene ID mapping (Entrez → Ensembl)  
3. Merged datasets from multiple studies  
4. Created DESeq2 dataset with batch as covariate  
5. Filtered low-expressed genes  
6. Performed differential expression analysis  
7. Applied batch effect correction using ComBat-seq  
8. Validated batch correction using:
   - PCA  
   - Log2FC correlation  
   - PVCA  

## Validation of Batch Correction

* PCA before and after correction
* Log2 fold-change correlation (Spearman ~0.97)
* Variance Partitioning (PVCA)

## Results

### Volcano Plot

![Volcano](results/plots/volcano_plot_ASD_vs_Control.png)

### PCA Before Batch Correction

![PCA Before](results/plots/PCA_before_batch.png)

### PCA After Batch Correction

![PCA After](results/plots/PCA_after_batch.png)

### Log2FC Correlation

![Correlation](results/plots/log2FC_correlation.png)

### PVCA Analysis

![PVCA](results/plots/PVCA_plot.png)

## Biological Interpretation

The analysis identified differentially expressed genes potentially associated with neurodevelopmental and regulatory pathways in ASD. The results suggest involvement of both coding and non-coding RNAs, highlighting possible avenues for functional studies and drug targeting.

## Key Findings

* Identified significant DEGs (FDR < 0.05, |log2FC| > 0.5)
* Successfully removed batch effects while preserving biological signals
* Observed involvement of coding and non-coding RNAs

## Limitations

- Analysis is based on publicly available datasets  
- Limited sample size across studies  
- Functional validation not performed  

## Tools Used

* R
* DESeq2
* sva (ComBat)
* dplyr

## Author

Indu Singh
