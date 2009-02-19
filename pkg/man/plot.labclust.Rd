\name{plot.labclust}
\alias{plot.labclust}
\alias{plot}
\title{dendrogram plot of a labclust object}
\description{The resulting plot does not show where the tree should be cut, instead it is very flexible.}
 \arguments{
 \item{x}{A \code{labclust} object to be plotted.}
\item{...}{All \code{dendrogram} plot options}
		}
\seealso{\link{colorplot}}
\examples{
x<-matrix(c(
c(1,1,1,1,1,1,1,1,1),
c(2,2,2,2,1,2,2,2,2), #exchangeable labels are allowed like this
c(1,1,1,1,1,2,2,2,2),
c(2,2,1,2,2,3,3,3,3),
c(1,1,2,1,1,3,3,3,3),#or like this 
c(1,1,2,1,1,3,3,3,3),
c(1,1,2,3,4,5,5,5,5),
c(1,1,2,3,4,5,5,5,5),
c(1,2,3,4,5,6,7,8,9)), ncol=9, byrow=TRUE) #each iteration in a row

y<-labeltodendro(x)
plot(y) # S3 method, uses plot.labclust
plot(y,center=TRUE) #you may like to center the dendrogram
abline(h=y$hcut) #or show where the dendrogram should be cut
          }

