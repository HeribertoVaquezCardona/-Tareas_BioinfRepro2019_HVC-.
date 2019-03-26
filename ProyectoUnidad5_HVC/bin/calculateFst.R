# Calculates Fst with genind file

install.packages("hierfstat", dependencies = TRUE)
library(hierfstat)

# Still I'm not sure of what Fst function is the correct.

#Option 1
fstat(x, fstonly=TRUE)

#Option 2
matFst <- pairwise.fst(x,res.type="matrix")
