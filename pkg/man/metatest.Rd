\name{metatest}
\alias{metatest}
\alias{summary.metatest}
\alias{print.metatest}

\title{
	metatest: random effects metaregression models and testing of coefficients
}
\description{
	\code{metatest} fits a random effects metaregression model and tests
	coeficients in various ways.  In addition to the traditional yet
	suboptimal z test, \code{metatest} yields the t-test, log likelihood
	ratio test, Bartlett corrected log likelihood ratio test, and the
	permutation test.  The latter two are to be recommended.
	
}

\usage{
metatest(formula, variance, data, threshold = 1e-05, maxiter = 100, npermut = 1000, ...)

\method{summary}{metatest}(object, digits = 4, ...)
\method{print}{metatest}(x, ...)

}

\arguments{
	
	\item{formula}{A \code{formula} specifying the meta regression model;
	use \code{y~x} to specify a meta regression of effect sizes \code{y}
	moderated by \code{x}; the moderators can be either continuous or
	categorical variables; an intercept is automatically included (use
	\code{y~x-1} to drop the intercept); use \code{y~1} for an intercept
	only model.}
	
	\item{variance}{The variances of the effect sizes to be modelled.}
	
	\item{data}{A \code{data.frame} to interpet the variables in formula
	and variance.}
	
	\item{threshold}{The threshold used in estimating the model; the
	threshold is the change in the value of the random effects variance
	parameter.}
	
	\item{maxiter}{The maximum number of iterations allowed in estimating the model.}
	
	\item{npermut}{The number of permutations performed by the permutation test.}
	
	\item{object, x}{Object of class \code{metatest}.}
	
	\item{digits}{Determines the number of digits to use in printing the results.}
	
	\item{...}{Not currently used.}
}

\details{
	The print and summary methods are identical, and print the random
	effects variance, the coefficients, and all the computed statistics and
	associated p-values. 
	
}

\value{
\code{metatest} returns an object of class \code{metatest} which is a list
with the following elements:

	\item{convergence }{Convergence info; 0 indicates convergence; -1
	signals that the estimator of between study variance was set to zero
	during estimation (with a warning).}
		
	\item{iter }{Number of iterations used in optimizing the parameters.}
	
	\item{variance }{Matrix with between study variance estimate, its associated log
	likelihood ratio statistic, df and p-value. }
	
	\item{coefficients }{The estimated coefficients.}
	\item{se }{The standard errors of the coefficients.}
	\item{tval }{The t-ratios of the coefficients.}
	\item{pZtest }{The p-values associated with the z-test. }
	\item{dfttest }{The df's associated with the t-tests.}
	\item{pttest }{The p-values associated with the t-test. }
	\item{LLR }{The log likelihood ratio statistics of the coefficients.}
	\item{pLLR }{The p-values associated with the LLR statistics.}
	\item{bartLLR }{The Bartlett corrected LLR statistics.}
	
	\item{bartscale }{The Bartlett scaling factor used to compute the
	corrected LLR statistics.}
	
	\item{pBartlett }{The p-values associated with the Bartlett corrected
	LLR statistics.}
	
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
