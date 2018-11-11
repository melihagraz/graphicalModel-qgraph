

library(huge)
library(qgraph)

d<-50 # Total number of genes/nodes
n<-20 # Total number of observations per gene
gr<-"scale-free"

L=huge.generator(obs,d, graph=gr)

true.prec<-L$omega  # True/population precision matrix

epre<-L$theta # true adjacency matrix of the network

qgraph(round(epre,3),edge.labels=FALSE,)
