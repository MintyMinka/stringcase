#' Change a uppercase string to an lowercase string
#'
#' @param string a string containing only uppercase letters
#'
#' @return the string written in lowercase
#' @export
#'
#' @examples to_uppercase("PONY")
to_lowercase <- function(string){
  if(is.character(string) == FALSE){
    stop("The argument needs to be a string")
  }
  if(grepl("[[:lower:]]", string)){
    stop("The argument string cannot contain lowercase letters")
  }
  if(grepl("[[:digit:]]", string)){
    stop("The argument string cannot contain numbers")
  }
  if(grepl("[[:blank:]]|[[:space:]]", string)){
    stop("The argument string cannot contain blank spaces and space characters")
  }
  if(grepl("[[:punct:]]", string)){
    stop("The argument string cannot contain punctuation characters")
  }
  else{
    tolower(string)
  }
}
