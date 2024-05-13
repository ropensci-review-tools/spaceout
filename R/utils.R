# from
# https://github.com/r-lib/styler/blob/e7562f14801bb3886757913911fd54a0e674a80f/R/compat-dplyr.R#L7-L11
lead <- function(x, n = 1L, default = NA) {
  xlen <- length(x)
  n <- pmin(n, xlen)
  c(x[-seq_len(n)], rep(default, n))
}
