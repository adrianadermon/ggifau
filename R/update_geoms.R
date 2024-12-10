## Save original defaults
line_defaults <- ggplot2::GeomLine$default_aes
vline_defaults <- ggplot2::GeomVline$default_aes
bar_defaults <- ggplot2::GeomBar$default_aes

#' Update geoms
#'
#' Update line and bar geoms to conform with the IFAU theme
#'
#' @export
set_geoms_ifau <- function() {
        ggplot2::update_geom_defaults("line", ggplot2::aes(linewidth = 0.5))
        ggplot2::update_geom_defaults("vline", ggplot2::aes(
                linewidth = 0.25 / 0.75,
                color = "#A8ACAD",
                linetype = "42"
        ))
        ggplot2::update_geom_defaults("bar", ggplot2::aes(fill = colors_ifau(1)))
}

#' Restore geom defaults
#'
#' Undo the changes made by `set_geoms_ifau()`
#' 
#' @export
unset_geoms_ifau <- function() {
  ggplot2::update_geom_defaults("line", line_defaults)
  ggplot2::update_geom_defaults("vline", vline_defaults)
  ggplot2::update_geom_defaults("bar", bar_defaults)
}
