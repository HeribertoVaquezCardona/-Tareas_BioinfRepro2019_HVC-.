#This script convert VCF file to genind object
#First, install the packages

install.packages("ade4", dependencies = TRUE)
install.packages("ape", dependencies = TRUE)
install.packages("pegas", dependencies = TRUE)
install.packages("adegenet", dependencies = TRUE)
install.packages("vcfR", dependencies = TRUE)

#Run the libraries
library(ade4)
library(ape)
library(pegas)
library(adegenet)
library(vcfR)

#Get the working directory of the VCF files (Zea_mays_7LR.vcf.gz and Zea_mays_7LR.vcf)
getwd()

#Convert the VCF file to genind object
#Vandeño
vcf_file <- system.file("extdata", "Z_Va.vcf.gz", package = "Z_Va.vcf")
vcf <- read.vcfR("Z_Va.vcf.gz", verbose = FALSE)
Va_genind <- vcfR2genind(vcf)
Va_genind
#Chalqueño
vcf_file <- system.file("extdata", "Z_Ch.vcf.gz", package = "Z_Ch.vcf")
vcf <- read.vcfR("Z_Ch.vcf.gz", verbose = FALSE)
Ch_genind <- vcfR2genind(vcf)
Ch_genind
