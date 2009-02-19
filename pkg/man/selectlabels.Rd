 \name{selectlabels}
\alias{selectlabels}
\title{it is useful to sort labels in agglomerative order}
\description{The labels which are not agglomerations or divisions of the most frequent label, will be removed. The function 
does not allow exchangeable labels.}
\usage{
selectlabels(labmat,freq)
	}
 \arguments{
 \item{labmat}{A matrix of labels, each row corresponding to a labelling.}
\item{freq}{A vector of frequencies, each element corresponding to frequency of a \code{labmat} row.}
		}
\details{
The function is useful if you have already counted your labels but you are not sure that they are in agglomerative order. 
The functions assumes your labels appear in increasing order, if your lables are like that, you should use \code{relabel.matrix} before.
		}
\value{
	\item{labmat}{Series of labels, sorted in agglomerative order.}
	\item{freq}{A vector of frequencies corresponding to the sorted labels.}
	}
\seealso{
		\link{relabel.matrix}
			}
\examples{
labmat<-matrix(c(
c(1,1,1,1,1,1,1,1,1),
c(2,2,2,2,1,2,2,2,2), #labels do not appear in increasing order
c(2,2,1,2,2,3,3,3,3), # here too, this is the most freqent label according to freq
c(1,1,2,2,2,2,2,3,3), # this is not agglomeration nor division of the most frequent label
c(1,2,3,4,5,6,7,8,9)), ncol=9, byrow=TRUE) 
freq<-c(1,2,3,2,1)

labmat<-relabel.matrix(labmat)
labmat
# now labels of labmat  appear in increasing order
y<-selectlabels(labmat,freq)
y$labmat
#now y is in agglomerative order

y$freq 
# frequencies corresponding to ordered labels

plot(tabletodendro(y$labmat,y$freq))
# see the resulting dendrogram
          }

