 \name{colorplot}
\alias{colorplot}
\title{colored dendrogram plot of a labclust object}
\description{The dendrogram is cut at the appropriate value, defined in a \code{labclust} object, and leaves are coloured repectively.}
\usage{
 colorplot(x,h,horiz=FALSE,...)
	}
 \arguments{
 \item{x}{A labclust object to be plotted.}
 \item{h}{The height that the tree should be cut, automatically extracted from a \code{labclust} object.}
 \item{horiz}{Clarifies to plot the dendrogram horizontally or vertically.}
\item{...}{Some of dendrogram plot options, but not all.}
		}
\details{The colorplot function is a modified version of HeatPlus package to cut a dendrogram and colour its leaves. Leaves with single element won't be coloured.}
\seealso{\link{plot.labclust}}
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
mydendro<-as.dendrogram(y)
colorplot(y,horiz=TRUE,lwd=3,cluscol=c("red","green","blue")) #leaves with single subjects won't get your specified color
plot(labeltodendro(x),horiz=TRUE) # changes orientation and dendrogram height starts from zero
          }

