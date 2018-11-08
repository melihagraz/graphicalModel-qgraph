 
# this code use huge package, 
#  find the network interaction via huge 
# construct the graphical model
library(BDgraph)
library(huge)
library(qgraph)
data(geneExpression)
datar<-geneExpression
datar<-as.matrix(datar)
test.out1= huge(datar, method = "glasso")
r.lambda<-huge.select(test.out1,criterion="stars")$opt.lambda
out1<-huge(datar, method = "glasso",lambda=r.lambda)
r.path<-out1$path
r.path<-as.matrix(r.path[[1]])
epre<-r.path
qgraph(round(epre,3),edge.labels=FALSE)
