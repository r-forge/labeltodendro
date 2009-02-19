\name{labclust}
\alias{labclust}
\title{labclust is an object}
\description{The \code{labclust} object is very similar to the \code{hclust} object which additionally contains information about where the tree should be cut. 
You can convert any \code{labclust} object to a dendrogram by \code{as.dendrogram}}
\examples{
x<-matrix(c(
c(1,1,1,1,1,1,1,1,1),
c(2,2,2,2,1,2,2,2,2), 
c(1,1,1,1,1,2,2,2,2),
c(2,2,1,2,2,3,3,3,3),
c(1,1,2,1,1,3,3,3,3), 
c(1,1,2,1,1,3,3,3,3),
c(1,1,2,3,4,5,5,5,5),
c(1,1,2,3,4,5,5,5,5),
c(1,2,3,4,5,6,7,8,9)), ncol=9, byrow=TRUE) 

y<-labeltodendro(x) 
class(y) # can be regarded as hclust too

           }

