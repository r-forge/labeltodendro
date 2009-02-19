 \name{labeltotable}
\alias{labeltotable}
\title{counts the number of labels appeared in a label matrix and finds the most frequent labelling and agglomeration and divisions of it.}
\description{The function is useful to make a summary table of Markov chain Monte Carlo labels for dendrogram representation. Exchangeable labels are allowed.}
\usage{labeltotable(x)	}
 \arguments{
 \item{x}{a numeric matrix of integers with iterations in rows and labels in columns; each row of x corresponds to a grouping}
	}
\details{The function may not be computationally efficient for large number of iterations or large number of clustered subjects. 
This function counts labels and then orders the resulting table based on agglomeration and divisions of the most frequent label.
		}
\value{
	\item{labmat}{A matrix of labels ordered in agglomerative order.}
	\item{freq}{The vector of frequencies corresponding to each row of \code{labmat}.}
	}
\seealso{
		\link{tabletodendro}, \link{labeltodendro}, \link{selectlabels}
			}
\examples{
x<-matrix(c(
c(1,1,1,1,1,1,1,1,1),
c(2,2,2,2,2,1,1,1,1), #exchangeable labels are allowed 
c(1,1,1,1,1,2,2,2,2),
c(2,2,1,2,2,3,3,3,3),
c(1,1,2,1,1,3,3,3,3), 
c(1,1,2,1,1,3,3,3,3),
c(1,1,2,3,4,5,5,5,5),
c(1,1,2,3,4,5,5,5,5),
c(1,2,3,4,5,6,7,8,9)), ncol=9, byrow=TRUE) #each iteration in a row
# this creates a matrix of labels
labtotab<-labeltotable(x)
# counts labels and summarises x

labtotab$lab
#gives labels

labtotab$freq
#gives the corresponding freqencies to the labels
          }

