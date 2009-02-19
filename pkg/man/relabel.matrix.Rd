 \name{relabel.matrix}
\alias{relabel.matrix}
\title{relabels a matrix label insisting that the labels of each row appear in increasing order}
\description{We strongly recommend to use this function before \code{tabletodendro} or \code{selectlabels}, if you defined the label matrix by yourself.}
\usage{
relabel.matrix(x)
	}
 \arguments{
 \item{x}{A numeric matrix of integers.}
		}
\seealso{
		\link{tabletodendro}, \link{selectlabels}
			}
\examples{
labmat<-matrix(c(
c(1,1,1,1,1,1,1,1,1),
c(2,2,2,2,1,2,2,2,2), #labels do not appear in increasing order
c(2,2,1,2,2,3,3,3,3), # here too
c(1,1,2,2,2,2,2,3,3), 
c(1,2,3,4,5,6,7,8,9)), ncol=9, byrow=TRUE) 

relabel.matrix(labmat) # gives the relabelled matrix
          }

