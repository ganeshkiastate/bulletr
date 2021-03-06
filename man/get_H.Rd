% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/features.R
\name{get_H}
\alias{get_H}
\title{Compute the Hausdorff distance between toolmarks}
\usage{
get_H(y1, y2, trim = 0)
}
\arguments{
\item{y1}{vector of equi-distant toolmark values}

\item{y2}{vector of equi-distant toolmark values}

\item{trim}{percentage of largest distances to be trimmed.}
}
\description{
Compute the Housdorff distance between two toolmark patterns. 
The striation patterns are not aligned before the distance is calculated.
The Hausdorff distance is defined as the maximum among the shortest distances between two curves. 
Here, we allow to trim the largest distances to make the distance more robust
}
