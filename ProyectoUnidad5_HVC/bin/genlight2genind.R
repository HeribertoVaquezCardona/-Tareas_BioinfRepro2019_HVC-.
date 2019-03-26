# Convert genlight to genind

# Before you got the "x" (genlight file) with the script "convertVCFtogenlight.R" 
# use "genlight2genind.R" to get genind file. 
# I tried convert VCF to genind in 3 computers but those jam. 

install.packages("dartR", dependencies = TRUE)
library(dartR) 

gl2gi(x, v = 1)
