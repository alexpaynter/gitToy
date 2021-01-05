#' @title Permute and string
#'
#' @description Randomly choose an order for a,b,c.  Return a comma-space
#'   separated string.
#'
#' @details A completely pointless function - fitting for a pointless package!
#' @param a An item
#' @param b Some other item
#' @param c A third item
#' @export
permute_and_string <- function(a,b,c) {
    vec <- c(a,b,c)
    vec <- sample(vec)
    vec <- paste(vec, collapse = ", ")
    return(vec)
}
