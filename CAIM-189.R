library(CMA) #SAYFA 189-190
data(golub)
TÜMÖR <- golub[,-1]
genifade <- golub[,-1]
veri<-data.frame(genifade,TÜMÖR)

library(discretization)
ayrýk= disc.Topdown(veri,method=1)

cbind(ayrýk$Disc.data[,1:5],TÜMÖR)

