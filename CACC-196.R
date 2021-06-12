library(CMA)
library(discretization)
data(golub)

TÜMÖR <-golub[,1]

GEN1 <- as.matrix(golub[,2])
GEN2 <- as.matrix(golub[,3])
GEN3 <- as.matrix(golub[,4])
GEN4 <- as.matrix(golub[,5])
veri<-data.frame(GEN1,GEN2,GEN3,GEN4,TÜMÖR)

show(veri)

ayrýk= disc.Topdown(veri,method=2)

show(ayrýk$Disc.data)
