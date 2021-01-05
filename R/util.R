#' @title Estimate and confidence interval string maker
#'
#' @description Compresses an estimate, lower (lci) and upper (uci) confidence interval into a string.
#'
#' @details cid is for confidence interval digits.  If it is omitted then d is used.  d is for the number of digits in the estimate.
#'
#' @param est The point estimate.
#' @param lcb The lower confidence bound.
#' @param ucb The upper confidence bound.
#' @param digits The number of digits kept from the estimate.
#' @param digits_ci The number of digits kept from the confidence interval.
#' @export
est_ci_str <- function(est, lcb, ucb, digits = 2, digits_ci = digits) {
    if (digits < 0 || digits %% 1 != 1) {
        stop("D must be a positive integer.")
    }
    est <- formatC(est, digits = digits, format = 'f')
    lcb <- formatC(lcb, digits = digits_ci, format = 'f')
    ucb <- formatC(ucb, digits = digits_ci, format = 'f')

    return(paste0(est, " (", lcb, ", ", ucb, ")"))
}

string_pval <- function(pval, digits = 2) {
    pval <- formatC(pval, digits = 2, format = 'f')
    return(pval)
}
