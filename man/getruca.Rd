\name{getruca}
\alias{getruca}
\title{Return RUCA codes for the given zip codes.}
\usage{
  getruca(df, zipCol)
}
\arguments{
  \item{df}{data frame}

  \item{zipCol}{name of the zip code column.}
}
\description{
  This function will return the Rural-Ruban Commuting Area
  Codes (RUCAs) based on the given vector of postal codes.
  See the contents of \code{data(classifications)} for all
  the possible rural-urban classifications available.
}

