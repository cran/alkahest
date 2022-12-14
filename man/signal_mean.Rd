% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/signal.R
\docType{methods}
\name{signal_mean}
\alias{signal_mean}
\alias{signal_mean-method}
\alias{signal_mean,ANY-method}
\title{Mean Intensities}
\usage{
signal_mean(...)

\S4method{signal_mean}{ANY}(...)
}
\arguments{
\item{...}{Any object that can be interpreted in a suitable way
(see \code{\link[grDevices:xy.coords]{grDevices::xy.coords()}}).}
}
\value{
Returns a \code{\link{list}} with two components \code{x} and \code{y}.
}
\description{
Mean Intensities
}
\examples{
## X-ray diffraction
data("XRD")

XRD1 <- signal_drift(XRD, lag = 1500)

## Bind
XRD_bind <- signal_bind(XRD, XRD1)
XRD_bind[, 1:10]

## Mean
XRD_mean <- signal_mean(XRD, XRD1)

plot(NULL, type = "l", xlim = c(10, 70) , ylim = c(3000, 36000),
     xlab = expression(2*theta), ylab = "Count")
lines(XRD, type = "l")
lines(XRD1, type = "l")
lines(XRD_mean, type = "l", col = "red")
}
\seealso{
Other signal processing methods: 
\code{\link{signal_bind}()},
\code{\link{signal_correct}()},
\code{\link{signal_drift}()},
\code{\link{signal_shift}()},
\code{\link{subset}()}
}
\author{
N. Frerebeau
}
\concept{signal processing methods}
