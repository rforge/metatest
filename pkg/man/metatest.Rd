\name{metatest}
\alias{metatest}
\alias{summary.metatest}
\alias{print.metatest}

\title{
	metatest fits a metaregression model and the Bartlett and permutation statistics
}
\description{
	\code{metatest} fits a metaregression model and computes various test
	statistics of the fitted coefficients. The statistics that are computed are
	the t-ratio, the log likelihood ratio, the Bartlett corrected log likelihood ratio,
	and the permutation test. 
}

\usage{
metatest(formula, variance, data, threshold = 1e-05, maxiter = 100, npermut = 1000, ...)

\method{summary}{metatest}(object, digits = 4, ...)
\method{print}{metatest}(x, ...)

}

\arguments{
	
	\item{formula}{\code{formula} specifying the meta regression model; use
	y~x to specify a meta regression of effect sizes y moderated by x; an
	intercept is included.}
	
	\item{variance}{The variances of the effect sizes to be modelled.}
	
	\item{data}{A dataframe to interpet the variables in formula and variance.}
	
	\item{threshold}{The threshold used in estimating the model; the threshold is the change in the value of the
	random effects variance parameter.}
	
	\item{maxiter}{The maximum number of iterations allowed in estimating the model.}
	
	\item{npermut}{The number of permutations used in the permutation test of the estimated coefficients.}
	
	\item{object, x}{Object of class \code{metatest}.}
	
	\item{digits}{Determines the number of digits to use in printing the results.}
	
	\item{...}{Not currently used.}
}

\details{
	The print and summary methods are identical, and print the random effects variance, the coefficients, and all
	the computed statistics and associated p-values. 
}

\value{
\code{metatest} returns an object of class \code{metatest} which is a list
with the following elements:

	\item{convergence }{Convergence info, 0 is good, -1 signals that the variance was set to zero during estimation (with a warning).}
	
	\item{iter }{Number of iterations used in optimizing the parameters.}
	\item{variance }{Matrix with the variance estimate, its associated log likelihood ratio statistic, df and p-value. }
	\item{coefficients }{The estimated coefficients.}
	\item{se }{The standard errors of the coefficients.}
	\item{tval }{The t-ratios of the coefficients.}
	\item{pZtest }{The p-values associated with the z-test of the t-ratios. }
	\item{pttest }{The p-values associated with the t-test of the t-ratios. }
	\item{dfttest }{The df's associated with the t-tests.}
	\item{LLR }{The log likelihood ratio statistics of the coefficients.}
	\item{pLLR }{The p-values associated with the LLR statistics.}
	\item{bartLLR }{The Bartlett corrected LLR statistics.}
	\item{bartscale }{The Bartlett scaling factor used to compute the corrected LLR statistics.}
	\item{pBartlett }{The p-values associated with the Bartlett corrected LLR statistics.}
	\item{ppermtest }{The p-values of the permutation tests of coefficients.}
	\item{call }{The function call that created the metatest object.}
	
}

\author{
	Ingmar Visser. Maintainer: Ingmar Visser <i.visser@uva.nl> 
}

\references{
	Hilde M. Huizenga, Ingmar Visser & Conor V. Dolan (2010). Hypothesis
	testing in random effects meta-regression, British journal of
	mathematical and statistical psychology, in press.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
data(metadata)
res <- metatest(y~x,yvar,data=metadata)
res
}

\keyword{ htest }
\keyword{ models }
\keyword{ regression }
