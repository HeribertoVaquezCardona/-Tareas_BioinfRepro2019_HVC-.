#This script convert VCF file to genlight file
#First, install the packages

install.packages("ade4", dependencies = TRUE)
install.packages("adegenet", dependencies = TRUE)
install.packages("vcfR", dependencies = TRUE)

#Run the libraries
library(ade4)
library(adegenet)
library(vcfR)

#Get the working directory of the VCF files (Zea_mays_7LR.vcf.gz and Zea_mays_7LR.vcf)
getwd()

#Convert the VCF file to genlight file using a genlight object
vcf_file <- system.file("extdata", "Zea_mays_7LR.vcf.gz", package = "Zeamays7LR")
vcf <- read.vcfR("Zea_mays_7LR.vcf.gz", verbose = FALSE)
x <- vcfR2genlight(vcf)
x
