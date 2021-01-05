#' @title Estimate and confidence interval string maker
#'
#' @description Compresses an estimate, lower (lci) and upper (uci) confidence interval into a string.
#'
#' @details cid is for confidence interval digits.  If it is omitted then d is used.  d is for the number of digits in the estimate.
#'
#' @param est The point estimate.
#' @param lcb The lower confidence bound.
#' @param ucb The upper confidence bound.
#' @param d Digits for the estimate.
#' @param cid Digits for the confidence interval (defaults to d)
#' @export
est_ci_str <- function(est, lcb, ucb, d = 2, cid = d) {
    if (d < 0 || d %% 1 != 1) {
        stop("D must be a positive integer.")
    }
    est <- formatC(est, digits = d, format = 'f')
    lcb <- formatC(lcb, digits = cid, format = 'f')
    ucb <- formatC(ucb, digits = cid, format = 'f')
  
    return(paste0(est, " (", lcb, ", ", ucb, ")"))
}

string_pval <- function(pval, digits = 2) {
    pval <- formatC(pval, digits = 2, format = 'f')
    return(pval)
}
