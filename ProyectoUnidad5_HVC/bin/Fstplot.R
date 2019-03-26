# This scripts creates the Fst plot using the option 2
# Option 2: matFst <- pairwise.fst(x,res.type="matrix")


install.packages("glPlot", dependencies = TRUE)
library(glPlot)

temp <- matFst
diag(temp) <- NA
boxplot(temp, xlab="Population", ylab="Fst")
