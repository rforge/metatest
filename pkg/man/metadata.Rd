\name{metadata}
\alias{metadata}
\docType{data}
\title{Example data for meta regression testing.}
\description{
Small example data set used in the example on the metatest help page. 
}
\usage{data(metadata)}
\format{
  A data frame with 6 observations on the following 3 variables.
  \describe{
    \item{\code{y}}{The effect sizes.}
    \item{\code{yvar}}{The variances of the effect sizes.}
    \item{\code{x}}{A moderator variable.}
  }
}

\source{
Data were randomly generated following an example in Huizenga et al (2011)
below.
}

\references{
	Hilde M. Huizenga, Ingmar Visser & Conor V. Dolan (2011). Hypothesis
	testing in random effects meta-regression, \emph{British Journal of
	Mathematical and Statistical Psychology}, 64, 1-19.
}

\examples{
data(metadata)
metadata
}
\keyword{datasets}
