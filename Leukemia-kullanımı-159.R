require(golubEsets)
data(Golub_Merge)

veri<-data.frame(Golub_Merge)
colnames(veri[7130:7140])

veri$Samples

veri$ALL.AML

veri$Source

exprs(Golub_Merge)[1:10,1:5]
