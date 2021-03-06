% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/SCPairwiseNoDir.R
\name{SCPairwiseNoDir}
\alias{SCPairwiseNoDir}
\title{Perform non-directional tests across two or more conditions}
\usage{
SCPairwiseNoDir <- function(Data, Conditions, sizeFactors,
Dropout.remove=FALSE, Dropout.upper=0,maxround=5,
StateNames=c("EE","DE"),UpdatePi=TRUE, Print=TRUE,SmallNum=1,  Seed=10, LOD=50)
}
\arguments{
\item{Data}{A data matrix contains expression values for each transcript
(gene or isoform level). In which rows should be transcripts
and columns should be samples. The matrix is expected to be unnormalized (raw data).}

\item{Conditions}{A factor indicates the condition which each sample belongs to.}

\item{sizeFactors}{The normalization factors. It should be a vector with lane
specific numbers (the length of the vector should be the same
as the number of samples, with the same order as the columns of Data).}

\item{maxround}{Number of iterations. The default value is 5.}

\item{StateNames}{names of the states}

\item{UpdatePi}{default is TRUE}

\item{Print}{whether print the messages}

\item{SmallNum}{When calculating log2 expression, a small number was added to each of
the values. Default is 1.}

\item{Seed}{seed}

\item{LOD}{Genes with max value < LOD will be eliminated in the analysis.}

\item{Droupout.remove,Dropout.upper}{For a given gene, whether cells with dropout will be
ignored in the test. Defaulte is FALSE. If it is set to TRUE, values that are less or equal to
Dropout.upper will be ignored during the test.}
}
\value{
Output: For each comparison, output posterior probabilities of being each state.
}
\description{
Perform non-directional tests across two or more conditions
}
\examples{
mat <- matrix(exp(rnorm(100,10,1)),ncol=10)
Sizes <- MedianNorm(mat)
tmp <- SCPairwiseNoDir(mat, rep(c("c1","c2"),each=5), Sizes, LOD=0)
}
\author{
Ning Leng
}

