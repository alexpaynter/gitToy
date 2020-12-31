est_ci_str <- function(est, lci, uci, d = 2, cid = d) {
    est <- formatC(est, digits = d, format = 'f')
    lci <- formatC(lci, digits = cid, format = 'f')
    uci <- formatC(uci, digits = cid, format = 'f')

    return(paste0(est, " (", lci, ", ", uci, ")"))
}
