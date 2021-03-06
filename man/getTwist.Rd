% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/miscellaneous.R
\name{getTwist}
\alias{getTwist}
\title{Estimate the twist in a bullet land}
\usage{
getTwist(path, bullet = NULL, twistlimit = NULL, cutoff = 0.75)
}
\arguments{
\item{path}{to a file in x3p format}

\item{bullet}{data in x3p format as returned by function read_x3p}

\item{twistlimit}{Constraint the possible twist value}

\item{cutoff}{Use this for the quantile cutoff}
}
\value{
numeric value estimating the twist
}
\description{
Estimation of the twist in a barrel follows roughly the process described by Chu et al (2010).
At the moment, twist is estimated from a single land - but the twist should be the same for the whole barrel. Therefore all lands of the same barrel should
have the same twist.
A note on timing: at the moment calculating the twist rate for a bullet land takes several minutes.
XXX TODO XXX make the different methods a parameter. Also, accept other input than the path - if we start with the flattened bulletland we get results much faster.
}
\examples{
\dontrun{
# execution takes several minutes
load("data/b1.rda")
twist <- getTwist(path="barrel 1 bullet 1", bullet = b1, twistlimit=c(-2,0)*1.5625)
}
}
