#' Export graph to file
#' 
#' @inheritParams ggplot2::ggsave
#' @export
ifau_save <- ggsave

## Update defaults
formals(ifau_save)$width = 12.4
formals(ifau_save)$height = 6.9
formals(ifau_save)$units = "cm"
