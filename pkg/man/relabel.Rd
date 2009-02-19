 \name{relabel}
\alias{relabel}
\title{relabels a vector, insisting that the labels appear in increasing order}
\description{If you need to relabel a huge matrix, use \code{relabel.matrix}.}
\usage{
relabel(x)
	}
 \arguments{
 \item{x}{a vector of integers}
		}
\details{
	This calls a \code{C} function, hence it is relatively fast.
		}
\seealso{
		\link{relabel.matrix}, \link{selectlabels}
			}
\examples{
x<-c(2,2,2,2,1,2,2,2,2) #labels do not appear in increasing order
relabel(x) # gives the relabelled vector
          }

