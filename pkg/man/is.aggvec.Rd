 \name{is.aggvec}
\alias{is.aggvec}
\title{checks wheather or not one vector is agglomeration of the another}
\description{The function is useful to remove labels which not agglomeration or division of eachotehr.}
\usage{is.aggvec(labagg,labdiv)}
 \arguments{
\item{labagg}{A vector of integers.}
\item{labdiv}{Another vector of integers.}
		}
\details{The function checks if \code{labagg} is agglomeration of \code{labdiv}. Exchangeable labels are allowed.}
\examples{
lab1<- c(1,2,1,2,1,2,1,2,1)
lab2<- c(6,3,6,4,6,5,6,2,6) # exchangeable lables are allowed, 1 have the same role as 6
is.aggvec(lab1,lab2) #should be TRUE
is.aggvec(lab2,lab1) #should be FALSE
          }

