library(CMA)
data(golub)
tumor <-golub[,1]
genifade <- as.matrix(golub[,-1])

yuzGen <- genifade[,1:100]
veri<-data.frame(yuzGen, tumor)

library(FSelector)
nitelikÖnem <-chi.squared(tumor ~., veri)

secilenNitelikler <-cutoff.k(nitelikÖnem, 5)
nitelik <-as.simple.formula(secilenNitelikler,"TUMOR")
show(nitelik)
