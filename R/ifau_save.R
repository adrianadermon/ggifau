#' Export graph to file
#'
#' `ifau_save()` is a simple wrapper for `ggsave` from the `ggplot2` package, 
#' setting the default width and height to the appropriate values for IFAU reports.
#' 
#' @inheritParams ggplot2::ggsave
#' @seealso [ggplot2::ggsave] which this function wraps.
#' @export
ifau_save <- ggplot2::ggsave

## Update defaults
formals(ifau_save)$width = 12.4
formals(ifau_save)$height = 6.9
formals(ifau_save)$units = "cm"
