\name{transformations}

\alias{transformations}

\alias{r2z}
\alias{z2r}
\alias{z2d}
\alias{r2d}

\title{
	Transform effect sizes.
}
\description{
	Utility functions to transform various effect size measures into each other.
}
\usage{
r2z(r)
r2d(r)
z2r(z)
z2d(z)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{r}{A correlation coefficient.}
  \item{z}{A z-value, ie a normalized effect size.}
}
\details{
Transform effect sizes into correlations, (Cohen's) d effect sizes, or z-distributed 
for performing meta regression.
}
\value{
Return values are z, d or r values. 
}
\references{Tba}
\author{
	Ingmar Visser. 
}

\examples{

## The function r2z is currently defined as
function(r) {
	return(0.5*(log(1+r)-log(1-r)))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory. one keyword per line
\keyword{ univar }
