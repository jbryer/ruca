#' Rural-Urban Commuting Area Codes
#' 
#' Given a postal code, will determine the urbanicity of that region based upon 
#' Rural Health Research Center's Rural-Urban Commuting Area Codes (RUCAs).
#'
#' @name ruca-package
#' @aliases ruca
#' @docType package
#' @title Rural-Urban Commuting Area Codes
#' @author \email{jason@@bryer.org}
#' @keywords package urbanization ruca
NULL

#' RUCA classifications.
#' 
#' Data frame containing the RUCA classifications.
#' 
#' @name classifications
#' @docType data
#' @format a data frame 34 observations of 7 variables.
#' @source  Rural Health Research Center
#' @keywords datasets
NULL

#' Mappings of zip codes to RUCA codes.
#' 
#' This data frames provides a mapping between zip codes and RUCA codes.
#' 
#' @name classifications
#' @docType data
#' @format a data frame 41,901 observations of 3 variables.
#' @source  Rural Health Research Center
#' @keywords datasets
NULL

#' Return RUCA codes for the given zip codes.
#' 
#' This function will return the Rural-Ruban Commuting Area Codes (RUCAs) based on the given
#' vector of postal codes. See the contents of \code{data(classifications)} for all the possible
#' rural-urban classifications available.
#' 
#' @param df data frame
#' @param zipCol name of the zip code column.
#' @export
getruca <- function(df, zipCol) {
	data(ruca)
	data(classifications)
	ruca$zip = as.character(ruca$zip)
	while(nrow(ruca[which(nchar(ruca$zip) < 5),]) > 0) { 
		ruca[which(nchar(ruca$zip) < 5),'zip'] = paste('0', ruca[which(nchar(ruca$zip) < 5),'zip'], sep='') 
	}
	ans = merge(df, ruca, by.x=zipCol, by.y='zip', all.x=TRUE, sort=FALSE)
	ans = merge(ans, classifications, by='ruca', all.x=TRUE, sort=FALSE)
	ans$state = NULL
	ans
}
