% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/VLgranger.R
\name{VLGrangerFunc}
\alias{VLGrangerFunc}
\title{VLGrangerFunc}
\usage{
VLGrangerFunc(
  Y,
  X,
  alpha = 0.05,
  maxLag,
  gamma = 0.5,
  autoLagflag = TRUE,
  family = gaussian
)
}
\arguments{
\item{Y}{is a numerical time series of effect}

\item{X}{is a numerical time series of cause}

\item{alpha}{is a significance level of f-test to determine whether \code{X} Granger-causes \code{Y}.  The default is 0.05.}

\item{maxLag}{is a maximum possible time delay. The default is 0.2*length(Y).}

\item{gamma}{is a parameter to determine whether \code{X} Granger-causes \code{Y} using BIC difference ratio. The default is  0.5.}

\item{autoLagflag}{is a flag for enabling the automatic lag inference function. The default is true.
If it is set to be true, then maxLag is set automatically using cross-correlation.
Otherwise, if it is set to be false, then the function takes the maxLag value to infer Granger causality.}

\item{family}{is a parameter of family of function for Generalized Linear Models function (glm). The default is \code{gaussian}.}
}
\value{
This function returns of  whether \code{X} Granger-causes \code{Y}.


\item{ftest}{ F-statistic of Granger causality. }
\item{p.val}{ A p-value from F-test. }
\item{BIC_H0}{Bayesian Information Criterion (BIC) derived from \code{Y} regressing on \code{Y} past.  }
\item{BIC_H1}{Bayesian Information Criterion (BIC) derived from \code{Y} regressing on \code{Y},\code{X} past. }
\item{XgCsY}{The flag is true if \code{X} Granger-causes \code{Y} using BIC difference ratio where \code{BICDiffRatio >= gamma}.}
\item{XgCsY_ftest}{The flag is true if \code{X} Granger-causes \code{Y} using f-test where \code{p.val>=alpha}. }
\item{XgCsY_BIC}{The flag is true if \code{X} Granger-causes \code{Y} using BIC where \code{BIC_H0>=BIC_H1}. }
\item{maxLag}{A maximum possible time delay.  }
\item{H0}{glm object of \code{Y} regressing on \code{Y} past.  }
\item{H1}{glm object of \code{Y} regressing on \code{Y,X} past. }
\item{follOut}{ is a list of  variables from function \code{followingRelation}. }
\item{BICDiffRatio}{ Bayesian Information Criterion difference ratio: \code{(BIC_H0-BIC_H1)/BIC_H0}.  }
}
\description{
VLGrangerFunc is a Variable-lag Granger Causality function. It tests whether \code{X} VL-Granger-causes \code{Y}.
}
\examples{
# Generate simulation data
TS <- SimpleSimulationVLtimeseries()
# Run the function
out<-VLGrangerFunc(Y=TS$Y,X=TS$X)

}
