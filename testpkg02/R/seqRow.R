#' Sequence based on the number of row of a dataframe
#' @param x a dataframe.
#' @export
seqRow <- function(x) {
    seq_len(NROW(x))
}