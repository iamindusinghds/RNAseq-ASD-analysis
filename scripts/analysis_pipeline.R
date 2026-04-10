# RNA-seq Analysis Pipeline (ASD vs Control)

# Libraries used

library(DESeq2)
library(sva)
library(dplyr)

# Step 1: Load datasets

# counts1 <- read.csv("GSE64018_counts.csv")

# counts2 <- read.csv("GSE102741_counts.csv")

# Step 2: Merge datasets

# counts_combined <- cbind(counts1, counts2)

# Step 3: Metadata preparation

# colData <- data.frame(

# condition = factor(c(rep("Control", n1), rep("ASD", n2))),

# batch = factor(c(rep(1, n1), rep(2, n2)))

# )

# Step 4: DESeq2 object creation

# dds <- DESeqDataSetFromMatrix(countData = counts_combined,

# colData = colData,

# design = ~ batch + condition)

# Step 5: Filtering

# dds <- dds[rowSums(counts(dds)) > 10, ]

# Step 6: Differential expression

# dds <- DESeq(dds)

# res <- results(dds, contrast = c("condition", "ASD", "Control"))

# Step 7: Batch correction

# normalized_counts <- counts(dds, normalized = TRUE)

# combat_counts <- ComBat(dat = as.matrix(normalized_counts),

# batch = colData$batch)

# Step 8: PCA visualization

# plotPCA(vst(dds), intgroup = "batch")

# Note:

# This script outlines the workflow used in the analysis.
