#' @import ggplot2

#' @export
ggifau <- function() {
  ## Set default theme
  ggplot2::theme_set(theme_ifau())

  ## Set default colors
  colors_ifau <- c("#12304A", # IFAU blue
                   "#F2C913",  # IFAU yellow
                   "#5F7562", # gray-green
                   "#BA5F6D", # pink
                   "#61445A", # dark purple
                   "#5C7987", # gray-blue
                   "#CFD3D4") # IFAU gray
  
  options("ggplot2.discrete.fill" = scale_fill_ifau)
  options("ggplot2.discrete.colour" = scale_colour_ifau)


  ## Modify geom default
  ggplot2::update_geom_defaults("line", aes(linewidth = 0.5))
  ggplot2::update_geom_defaults("vline", aes(linewidth = 0.25/0.75,
                                             color = "#A8ACAD",
                                             linetype = "42"))
  ggplot2::update_geom_defaults("bar", aes(fill = colors_ifau[1]))
}
