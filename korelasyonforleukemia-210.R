library(CMA)
data(golub)
tumor <-golub[,1]
genifade <- as.matrix(golub[,-1])

yuzGen <-genifade[,1:100]
veri<-data.frame(yuzGen,tumor)

library(FSelector)
nitelikÖnem <- cfs(tumor ~., veri)

show(nitelikÖnem)

nitelik <-as.simple.formula(nitelikÖnem, "TUMOR")
show(nitelik)
