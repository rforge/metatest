\name{metatest}
\alias{metatest}
\alias{summary.metatest}
\alias{print.metatest}

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
}

\usage{
metatest(formula, variance, data, threshold = 1e-05, maxiter = 100, npermut = 1000, ...)

\method{summary}{metatest}(object, digits = 4, ...)
\method{print}{metatest}(x, ...)

}

\arguments{
	
	\item{formula}{\code{\link{formula}} specifying the meta regression model;
	use \code{y~x} to specify a meta regression of effect sizes \code{y}
	moderated by \code{x}; the moderators can be either continuous or
	categorical variables; an intercept is included by default (use
	\code{y~x-1} to drop the intercept); use \code{y~1} for an intercept
	only model, i.e. a meta-analysis model.}
	
	\item{variance}{The variances of the effect sizes to be modelled (a
	vector or a variable name interpreted in \code{data}).}
	
	\item{data}{A \code{data.frame} to interpet the variables in arguments
	\code{formula} and \code{variance}.}
	
	\item{threshold}{The threshold used in estimating the model; the
	threshold is the change in the value of the random effects variance
	parameter.}
	
	\item{maxiter}{Maximum number of iterations allowed in estimating the model.}
	
	\item{npermut}{Number of permutations performed by the permutation test.}
	
	\item{object, x}{Object of class \code{metatest}.}
	
	\item{digits}{Determines the number of digits to use in printing the results.}
	
	\item{...}{Not currently used.}
}

\details{
	
	The effect sizes to be analyzed can be of arbitrary type; some
	\code{\link{transformations}} between different effect size measures
	are provided. For many more see the package compute.es. 
	
	The print and summary methods are currently identical (this may change
	in the future), and print the random effects variance, the
	coefficients, and all the computed statistics and associated p-values.
	
}

\value{
\code{metatest} returns an object of class \code{metatest} which is a named list
with the following elements:

	\item{convergence }{Convergence info; 0 indicates convergence; -1
	signals that the estimator of between study variance was set to zero
	during estimation (with a warning).}
		
	\item{iter }{Number of iterations used in optimizing the parameters.}

	\item{variance }{Matrix with between study variance estimate, its associated log
	likelihood ratio statistic, df and p-value. } 
	
	\item{coefficients }{Estimated coefficients.}
	\item{se }{Standard errors of the coefficients.}
	\item{tval }{The t-ratios of the coefficients.}
	\item{pZtest }{The p-values associated with the z-test. }
	\item{dfttest }{The df's associated with the t-tests.}
	\item{pttest }{The p-values associated with the t-test. }
	\item{LLR }{The log likelihood ratio statistics.}
	\item{pLLR }{The p-values associated with the LLR statistics.}
	\item{bartLLR }{The Bartlett corrected LLR statistics.}
	
	\item{bartscale }{The Bartlett scaling factor used to compute the
	corrected LLR statistics.}
	
	\item{pBartlett }{The p-values associated with the Bartlett corrected
	LLR statistics.}
	
	\item{ppermtest }{The p-values of the permutation tests.}
	\item{call }{The function call that created the metatest object.}

}

\author{
	Ingmar Visser & Hilde Huizenga. Maintainer: Ingmar Visser <i.visser@uva.nl> 
}

\references{
	Hilde M. Huizenga, Ingmar Visser & Conor V. Dolan (2011). Hypothesis
	testing in random effects meta-regression, \emph{British Journal of
	Mathematical and Statistical Psychology}, 64, 1-19.
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
