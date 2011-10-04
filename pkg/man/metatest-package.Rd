\name{metatest-package}
\alias{metatest-package}

\docType{package}

\title{
	metatest fits and tests a metaregression model
}

\description{
	\code{metatest} fits and tests a metaregression model.  In addition to
	the traditional z test on the estimated coefficients, \code{metatest}
	also yields more reliable statistics: the t-test, log likelihood ratio
	test, Bartlett corrected log likelihood ratio test, and the permutation
	test.  The Bartlett corrected log likelihood ratio test and the
	permutation test are to be recommended since their type 1 errors are
	adequate.
	
	See \code{\link{metatest}} for details and an example. 
	
}

\details{
	\tabular{ll}{
	Package: \tab metatest\cr
	Type: \tab Package\cr
	Version: \tab 1.0-2\cr
	Date: \tab 2011-10-04\cr
	License: \tab GPL\cr
	LazyLoad: \tab yes\cr
	}
}

\author{
	The code that does the hard work was written by Hilde Huizenga.  Ingmar
	Visser added the interface functions and handled turning code into a
	package.  Maintainer: Ingmar Visser <i.visser@uva.nl> 
}

\references{
	Hilde M. Huizenga, Ingmar Visser & Conor V. Dolan (2011). Hypothesis
	testing in random effects meta-regression, \emph{British Journal of
	Mathematical and Statistical Psychology}, 64, 1-19.
}

\keyword{ htest }
\keyword{ models }
\keyword{ regression }
