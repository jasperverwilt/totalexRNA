# Automated and manual extracellular total RNA human blood plasma sequencing 
This pipeline analyzes the extracellular linear and circular RNA of RNA sequencing data prepared with the SMARTer® Stranded Total RNA-Seq Kit v3 - Pico Input Mammalian.

## Preparations
### Snakemake
The pipeline relies on the proper installation of [snakemake](https://snakemake.readthedocs.io/en/stable/getting_started/installation.html), so make sure to install and activate snakemake before use:
```ruby
conda create -c conda-forge -c bioconda -n snakemake snakemake
conda activate snakemake
snakemake --help
```

### config.yml
The pipeline expects the correct indexes to be provided in the `config/config.yml` file, so make sure to adjust those settings. In there, you should also indicate which version of the kit you are using ('v2' or 'v3') and what sequencing approach you used to generate the data ('se' or 'pe').

## Run the pipeline

# totalexRNA
