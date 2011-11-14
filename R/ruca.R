.First.lib <- function(libname, pkgname) {
	data(ruca)
	data(classifications)
}

getruca <- function(df, zipCol) {
	ruca$zip = as.character(ruca$zip)
	while(nrow(ruca[which(nchar(ruca$zip) < 5),]) > 0) { ruca[which(nchar(ruca$zip) < 5),'zip'] = paste('0', ruca[which(nchar(ruca$zip) < 5),'zip'], sep='') }
	ans = merge(df, ruca, by.x=zipCol, by.y='zip', all.x=TRUE, sort=FALSE)
	ans = merge(ans, classifications, by='ruca', all.x=TRUE, sort=FALSE)
	ans$state = NULL
	ans
}