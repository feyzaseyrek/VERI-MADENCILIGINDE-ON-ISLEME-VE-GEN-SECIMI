library(FSelector)
GEN1 <-c(19,26,25,14,21,44,16,17,25,10,10,17,27,60,25)
GEN2 <-c(35,25,12,28,42,56,32,34,50,20,20,34,54,11,43)
GEN3 <-c(11,28,26,12,22,28,17,18,23,11,13,15,28,12,24)
TUMOR <-c("A","B","B","A","B","B","A","A","B","A","A","A","B","A","B")
veri<-data.frame(GEN1,GEN2,GEN3,TUMOR)
show(veri)

nitelikler <- cfs(TUMOR~., veri)

formul <- as.simple.formula(nitelikler,"TUMOR")
show(formul)
