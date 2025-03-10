## Save original defaults
line_defaults <- ggplot2::GeomLine$default_aes
vline_defaults <- ggplot2::GeomVline$default_aes
hline_defaults <- ggplot2::GeomHline$default_aes
bar_defaults <- ggplot2::GeomBar$default_aes
text_defaults <- ggplot2::GeomText$default_aes
label_defaults <- ggplot2::GeomLabel$default_aes

#' Update geoms
#'
#' Update line and bar geoms to conform with the IFAU theme.
#'
#' @export
set_geoms_ifau <- function() {
        ggplot2::update_geom_defaults("line", ggplot2::aes(linewidth = 1/(0.75*ggplot2::.pt)))
        ggplot2::update_geom_defaults("vline", ggplot2::aes(
                linewidth = 0.5/(0.75*ggplot2::.pt),
                color = "#8B8E8F",
                linetype = "solid"
        ))
        ggplot2::update_geom_defaults("hline", ggplot2::aes(
                linewidth = 0.5/(0.75*ggplot2::.pt),
                color = "#8B8E8F",
                linetype = "solid"
        ))
        ggplot2::update_geom_defaults("bar", ggplot2::aes(fill = colors_ifau(1)))
        ggplot2::update_geom_defaults("text", list(size = 8/ggplot2::.pt))
        ggplot2::update_geom_defaults("label", list(size = 8/ggplot2::.pt))
}

#' Restore geom defaults
#'
#' Undo the changes made by `set_geoms_ifau()`.
#' 
#' @export
unset_geoms_ifau <- function() {
  ggplot2::update_geom_defaults("line", line_defaults)
  ggplot2::update_geom_defaults("vline", vline_defaults)
  ggplot2::update_geom_defaults("hline", hline_defaults)
  ggplot2::update_geom_defaults("bar", bar_defaults)
  ggplot2::update_geom_defaults("text", text_defaults)
  ggplot2::update_geom_defaults("label", label_defaults)
}
