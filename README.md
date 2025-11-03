# Bioinformatics Skin Cancer Analysis

A comprehensive transcriptomic analysis project investigating skin cancer biomarkers through RNA-seq data processing and bioinformatics analysis.

## Project Overview

This project analyzes transcriptome sequencing data from skin cancer and adjacent normal tissues to identify differentially expressed genes and pathways associated with skin cancer development. The analysis includes data fetching, quality control, genome alignment, differential expression analysis, and functional enrichment studies.

## Authors
- Sahand Akramipour (401110618)
- Yousef Miryousefi (401110642)

## Technologies Used
- **Python**: Data fetching, quality control, alignment
- **R**: Differential expression analysis (DESeq2), pathway analysis (clusterProfiler), visualization
- **Bioinformatics Tools**: FastQC, Bowtie2, SAMtools, featureCounts
- **Visualization**: ggplot2, GSEA plots, Cytoscape networks

## Data Source
- **ENA Project ID**: PRJNA546533
- **Genome Reference**: GRCh38/hg38 (ENSEMBL)
- **Samples**: 12 RNA-seq datasets (6 cancer, 6 normal tissues)

## Project Structure
```
bioinformatics-skin-cancer-analysis/
├── scripts/                    # Analysis scripts
│   ├── Data Fetching.ipynb    # Data download and preprocessing
│   ├── pathway_R.ipynb        # Pathway enrichment analysis
│   └── TSV_to_Plot.R          # Volcano plot generation
├── data/                      # Input data files
│   ├── genes.tsv
│   └── GSE132215.top.table.tsv
├── plots/                     # Generated plots
│   ├── volcano_padj.pdf
│   └── volcano_pval.pdf
├── Bio Project Report.pdf     # Detailed project report
└── README.md
```

## Key Findings

### Differentially Expressed Genes (DEGs)
- **Upregulated**: IL6, CCND2, PLAUR, CD44 (17 genes total)
- **Downregulated**: C3, LCN2, NFKB2 (2 genes total)

### Enriched Pathways
- IL6_JAK_STAT3_SIGNALING
- ANGIOGENESIS
- APICAL_SURFACE
- COMPLEMENT SYSTEM

## Setup and Installation

### Prerequisites
- Python 3.7+
- R 4.0+
- Bioinformatics tools: FastQC, Bowtie2, SAMtools

### R Dependencies
```r
install.packages("BiocManager")
BiocManager::install(c("clusterProfiler", "org.Hs.eg.db", "enrichplot", "DOSE"))
install.packages("ggplot2")
install.packages("ggridges")
```

### Python Dependencies
```bash
pip install subprocess zipfile os pandas
```

## Usage

### 1. Data Fetching and Quality Control
Run the Jupyter notebook:
```bash
jupyter notebook scripts/Data\ Fetching.ipynb
```

### 2. Differential Expression Analysis
Execute the R script for DEG identification:
```r
# Load DESeq2 results
deg <- read.delim("data/GSE132215.top.table.tsv", header = TRUE, sep = "\t")
# Apply filters: adjusted p-value < 0.05, |log2FC| > 1
```

### 3. Pathway Enrichment Analysis
Run the pathway analysis notebook:
```bash
jupyter notebook scripts/pathway_R.ipynb
```

### 4. Visualization
Generate volcano plots:
```r
source("scripts/TSV_to_Plot.R")
```

## Results Summary

The analysis identified 19 differentially expressed genes associated with skin cancer. Key upregulated genes (IL6, CCND2, PLAUR, CD44) are involved in tumor proliferation, immune evasion, and angiogenesis. Downregulated genes (C3, LCN2, NFKB2) suggest immune suppression mechanisms.

Gene Set Enrichment Analysis revealed significant enrichment in inflammatory pathways (IL6-JAK-STAT3), angiogenesis, and complement system dysregulation.

## Citation

If you use this analysis in your research, please cite:
```
Akramipour, S. & Miryousefi, Y. (2024). Transcriptomic Insights into Skin Cancer Biomarkers.
Introduction to Bioinformatics Final Project, Sharif University of Technology.
```

## License

This project is for educational purposes. Please contact authors for usage permissions.

## Contact

- Sahand Akramipour: [Your email/contact]
- Yousef Miryousefi: [Your email/contact]
