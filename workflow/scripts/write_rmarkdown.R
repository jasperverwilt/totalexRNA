#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)


library(rmarkdown)
rmarkdown::render('workflow/scripts/QC.Rmd',params=list(args =  args[1]),  output_file = args[2])
