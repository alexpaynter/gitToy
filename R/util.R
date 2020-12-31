est_ci_str <- function(est, lci, uci, d = 2) {
    est <- formatC(est, digits = d, format = 'f')
    lci <- formatC(lci, digits = d, format = 'f')
    uci <- formatC(lci, digits = d, format = 'f') # added a mistake intentionally.

    return(paste0(est, " (", lci, ", ", uci, ")"))
}
