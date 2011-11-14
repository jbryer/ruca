\name{getruca}
\alias{getruca}
\title{Determine Urban/Rural Classification of Postal Codes}

\description{
  This function will return the Rural-Ruban Commuting Area Codes (RUCAs) based on the given
  vector of postal codes. See the contents of \code{data(classifications)} for all the possible
  rural-urban classifications available.
}

\usage{
getruca(postalCodes)
}

\arguments{
\item{ips}{a vector of character strings representing postal codes.}
}

\author{Jason Bryer \email{jason@bryer.org}}

\seealso{
	\code{\link[GeoIP]{geocodie.ip}},
}

\examples{
    library(ruca)
    getruca("205.143.68.51")
}

\keyword{gis, urban, rural}
