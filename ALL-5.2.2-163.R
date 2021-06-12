#BiocManager::install("ALL")
#Sayfa 163-164
library(ALL)
data(ALL)
ncol(ALL)
nrow(ALL)
exprs(ALL)[1:10, 1:5]
t(exprs(ALL)[1:5, 1:10])

veri<-data.frame(ALL)
colnames(veri[12627:12645])

veri$BT
