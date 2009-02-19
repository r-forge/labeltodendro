   \name{labeltodendro}
          \alias{labeltodendro}
          \title{converts series of labels to a labclust object}
          \description{
 	The function calls other internal functions to count labels, make a table of agglomerations and divisions, and gives a \code{labclust} object.
          }
          \usage{
          labeltodendro(x,labels=NULL)
          }
          \arguments{
            \item{x}{A numeric matrix of integers with iterations in rows and labels in columns. Each row of \code{x} corresponds to a grouping.}
            \item{labels}{A vector of stings concering labels for each column of \code{x}; The names of associated to the clustered subjects.}
          }
          \details{The most frequent label will be used to search for agglomerations and divisioins and will be used for 
          plotting and coloring the resulting dendrogram.
			 }
	\value{
\item{merge}{Returns a matrix of merges according to \code{hclust} format.}
\item{height}{Gives heights of each branch of \code{merge} matrix.}
\item{hcut}{Shows where the tree should be cut.}
	}
          \seealso{
            \link{tabletodendro}, \link{labeltotable}, \link{colorplot}, \link{labclust}
          }
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
# this creates a matrix of labels

y<-labeltodendro(x)
mydendro<-as.dendrogram(y)
colorplot(y) #uses labclust plot

plot(mydendro) #uses dendrogram plot

plot(mydendro,center=TRUE)#you may like to center the dendrogram leaves
          }

