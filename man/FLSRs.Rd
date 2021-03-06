% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/genericMethods.R, R/FLSR.R
\docType{class}
\name{FLSRs}
\alias{FLSRs}
\alias{FLSRs-methods}
\alias{FLSRs}
\alias{FLSRs-class}
\alias{FLSRs,ANY-method}
\alias{FLSRs,missing-method}
\alias{FLSRs,list-method}
\alias{FLSRs,FLSR-method}
\alias{FLSRs,missing-method}
\alias{FLSRs,list-method}
\title{\code{FLSRS} is a class that extends \code{list} through \code{FLlst} but
implements a set of features that give a little bit more structure to list
objects. The elements of \code{FLSRs} must all be of class
\code{FLSR}. It implements a lock mechanism that, when turned on, does
not allow the user to increase or decrease the object length.}
\usage{
FLSRs(object, ...)

\S4method{FLSRs}{FLSR}(object, ...)

\S4method{FLSRs}{missing}(object, ...)

\S4method{FLSRs}{list}(object, ...)
}
\description{
\code{FLSRS} is a class that extends \code{list} through \code{FLlst} but
implements a set of features that give a little bit more structure to list
objects. The elements of \code{FLSRs} must all be of class
\code{FLSR}. It implements a lock mechanism that, when turned on, does
not allow the user to increase or decrease the object length.
}
\section{Slots}{
 \describe{ \item{.Data}{The data. \code{list}.}
\item{names}{Names of the list elements. \code{character}.}
\item{desc}{Description of the object. \code{character}.} \item{lock}{Lock
mechanism, if turned on the length of the list can not be modified by adding
or removing elements. \code{logical}.} }
}

\examples{

data(nsher)
bnsher <- nsher
model(bnsher) <- bevholt
bnsher <- fmle(bnsher)
fls <- FLSRs(Ricker=nsher, BevHolt=bnsher)
summary(fls)

}
\seealso{
\link{FLlst}, \link[base]{list}, \link{FLSR}
}
\author{
The FLR Team
}
\keyword{classes}
