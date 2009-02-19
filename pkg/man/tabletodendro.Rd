 \name{tabletodedndro}
\alias{tabletodendro}
\title{converts a label matrix and a frequency vector to a labclust object}
\description{The function assumes that labels appear in increasing order and also each row sorted in agglomerative order.}
\usage{tabletodendro(labmat,freq,labels=NULL)}
 \arguments{
\item{labmat}{A label matrix, each row sorted in agglomerative orde. Labels should appear in increasing order.}
\item{freq}{A vector of frequencies corresponding to each row of \code{labmat} matrix.}
 \item{labels}{A vector of frequencies corresponding to each row of \code{labmat} matrix.}
		}
\details{If your label matrix does not have labels in increasing order use \code{relabel.matrix}. If the label matrix is not sorted in agglomerative order use \code{selectlabels}.}
\seealso{
		\link{labclust}, \link{relabel.matrix}, \link{selectlabels}
			}
\examples{
labmat<-matrix(c(
c(1,1,1,1,1,1,1,1,1),
c(1,1,1,2,2,1,1,1,1), 
c(1,1,2,3,3,4,4,4,4)), ncol=9, byrow=TRUE) 
freq<-c(5,10,15)

plot(tabletodendro(labmat,freq,labels=paste("subject",1:9))) #plots the resulting dendrogram

plot(tabletodendro(labmat,freq),center=TRUE) # you may like to center the dendrogram
          }

