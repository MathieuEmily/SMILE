\name{SMILE}
\alias{SMILE}
\title{Detection of a subpopulation under selection}
\usage{
SMILE(x,plot=TRUE)
}
\arguments{
\item{x}{A nxp \code{\link{matrix}} or \code{\link{data.frame}}.}
\item{plot}{A boolean flag indicating whether an graphical output of the clustering should be displayed or not.}
}

\value{
A list containing the following components:
	\item{selected}{A \code{\link{vector}} that stored the subset of individuals selected by SMILE}
	\item{hc}{An object of class \code{\link{hclust}} corresponding to the hierarchical clustering tree obtaining with SMILE}
	\item{d2s}{An object of class \code{\link{dist}} corresponding to the dissimilarity matrix computed with the dissimilarity measure d2s.}
}
\description{
	\code{SMILE} allows the detection of a subpopulation under selection in a genomic region.
}
\details{
	\code{SMILE} is an implementation of the statistical procedure proposed in Emily et al. (2016). The SMILE method selects the smallest subset of conditional profiles that coalesce at the final step of a single-linkage hierarchical clustering constructed with the d2s dissimilarity.
}
\examples{
## Example of a matrix of haplotype counts for dog breeds
data(GenomicRegion)

## Computation of the SMILE procedure with a graphical output
res <- SMILE(GenomicRegion)

## Identification of the individuals selected with SMILE
res$selected

## Drawing of the hierarchical clustering tree
plot(res$hc)

## Printing of the dissimilarity matrix
res$d2s
}
\references{
Emily, M., Hitte, C. and Mom, A. SMILE: a novel Dissimilarity-based Procedure for Detecting Sparse-Specific Profiles in Sparse Contingency Tables. Computational Statistics and Data Analysis,  Vol. 99, pages 171-188, 2016.\cr
}
