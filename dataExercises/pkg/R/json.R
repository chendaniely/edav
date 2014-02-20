##' Read a json file using RJSONIO
##'
##'
##' @param string interpreted as a string or a file path
##' @return a data.frame, hopefully
##' @importFrom RJSONIO fromJSON
##' @export
readJSONFile <- function(file, names) {
    out <- RJSONIO::fromJSON(file)
    ## result is a list of lists
    #print(str(out, max=1))
    #print(str(out[[1]]))
    out <- lapply(out, prepareEachRow, arg=NULL)
    out <- do.call("rbind", out)
    print(str(out))
    return(as.data.frame(out))
}
prepareEachRow <- function(x, ...) {
	return (x)
}