Y<-c(12,18,9,14,7,5,10,8,15,17,20)
X1<-c(4,6,3,5,2,7,8,9,11,14,15)
X2<-c(8,14,4,6,5,2,6,2,8,8,15)
X3<-c(12,15,8,9,10,5,7,9,9,11,12)
veri<-data.frame(X1,X2,X3,Y)
show(veri)

library(FSelector)
nitelikÖnem<-rank.correlation(Y~., veri)

show(nitelikÖnem)

altKume<-cutoff.k(nitelikÖnem, 3)
sonuc<-as.simple.formula(altKume,"Y")
show(sonuc)

library(CMA)
data(golub)
tumor <-golub[,1]
show(tumor)
genifade<- as.matrix(golub[,-1])

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
nitelikÖnem<-rank.correlation(tumor~., veri)
secilenNitelikler<-cutoff.k(nitelikÖnem,5)

nitelik<-as.simple.formula(secilenNitelikler,"TUMOR")
show(nitelik)
