library(CMA)
data(golub)
genifade<-as.matrix(golub[,-1])
tumor<-golub[,1]

show(tumor)

a<-c()
for(i in 1:length(tumor)){
if (tumor[i]=="ALL")
a[i]<- 1
else
a[i]<- 0
  
}


tumor<-a
show(tumor)


yuzGen<- genifade[,1:100]
veri<-data.frame(yuzGen,tumor)

library(FSelector)
nitelikÖnem<-linear.correlation(tumor~., veri)
secilenNitelikler<-cutoff.k(nitelikÖnem,5)

nitelik<-as.simple.formula(secilenNitelikler,"TUMOR")
show(nitelik)

