# This script creates the HWE plot.

# This plot uses chi² in the "y" and the 2 popolutions in "x", but the avarages aren´t the best because I used just some
# samples, not all :s .



chi2<-c(3.64E+06, )
Popolutions<-c(Vandeno,Chalqueno)
barplot(x=Popolutions, y=chi²)



HWEPlot <- data.frame(popolution=c("Vandeno", "Chalqueno"), chi2=c(3.6406, 4.3804))
barplot(HWEPlot$chi2, names.arg= HWEPlot$popolution)
