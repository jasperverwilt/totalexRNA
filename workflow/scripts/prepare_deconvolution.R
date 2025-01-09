#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)

library(dplyr)
htseq <- read.table(args[1], , col.names = c("X1", "X2"))
prepare <- read.table(args[2], header = TRUE)
export <- htseq %>%
  filter(X2 != 0) %>%
  inner_join(prepare, by = c("X1" = "ensembl")) %>%
  mutate(TPM = X2 / sum(X2) * 1000000) %>%
  dplyr::select(name, TPM) %>%
  as.data.frame()

colnames(export) <- c("gene_name", args[3])
write.csv(export, args[4], row.names = FALSE, quote = FALSE)
