install.packages("ggplot2")
library(ggplot2)

data <- read.delim("~/Downloads/GSE132215.top.table.tsv", header = TRUE, sep = "\t", row.name = 1)

str(data)
head(data)

# Add a column for significance
data$Significance <- ifelse(data$pvalue < 0.05 & abs(data$log2FoldChange) > 1, "Significant", "Not Significant")

# Plot using ggplot2
volcano_plot <- ggplot(data, aes(x = log2FoldChange, y = -log10(pvalue), color = Significance)) +
  geom_point(alpha = 0.8, size = 2) +  # Scatter plot
  scale_color_manual(values = c("black", "red")) +  # Color significant genes
  theme_minimal() +
  labs(title = "Volcano Plot", x = "Log2 Fold Change", y = "-Log10 p-value") +
  geom_hline(yintercept = -log10(0.05), linetype = "dashed", color = "blue") +  # Significance threshold
  geom_vline(xintercept = c(-1, 1), linetype = "dashed", color = "black")  # Fold change threshold

# Display the plot
print(volcano_plot)
