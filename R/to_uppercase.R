#' Change a lowercase string to an uppercase string
#'
#' @param string a string containing only lowercase letters
#'
#' @return the string written in uppercase
#' @export
#'
#' @examples to_uppercase("pony")
to_uppercase <- function(string){
  if(is.character(string) == FALSE){
    stop("The argument needs to be a string")
  }
  if(grepl("[[:upper:]]", string)){
    stop("The argument string cannot contain uppercase letters")
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
    toupper(string)
  }
}
