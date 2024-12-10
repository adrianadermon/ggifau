#' @importFrom ggplot2 %+replace%
NULL

#' Minimal IFAU theme
#'
#' Sets plot aspects text, axes, grid, and legend. Does not set colors, linetypes, shapes etc.
#' 
#' @export
theme_ifau_minimal <- function() {
  ggplot2::theme_minimal() %+replace%
    ggplot2::theme(
      text = ggplot2::element_text(size = 8),
      axis.line = ggplot2::element_line(linewidth = 0.2/.75),
      axis.ticks = ggplot2::element_line(linewidth = 0.16/.75),
      axis.ticks.length = ggplot2::unit(1.14, "mm"),
      axis.minor.ticks.length = ggplot2::unit(0.57, "mm"),
      axis.text = ggplot2::element_text(size = 8,),
      axis.text.x = ggplot2::element_text(margin = ggplot2::margin(t = 0.7, r = 0,
                                                 b = 0, l = 0,
                                                 unit = "mm")),
      axis.text.y = ggplot2::element_text(hjust = 1,
                                 margin = ggplot2::margin(t = 0, r = 0.7,
                                                 b = 0, l = 0,
                                                 unit = "mm")),
      axis.title.x = ggplot2::element_text(margin = ggplot2::margin(t = 0.8, r = 0.8,
                                                  b = 0.8, l = 0.8,
                                                  unit = "mm")),
      axis.title.y = ggplot2::element_text(margin = ggplot2::margin(t = 0.8, r = 0.8,
                                                  b = 0.8, l = 0.8,
                                                  unit = "mm"),
                                  angle = 90),
      panel.grid = ggplot2::element_line(linewidth = 0.15/0.75,
                                linetype = "21",
                                color = "#E6E9EB"),
      panel.grid.minor = ggplot2::element_blank(),
      plot.margin = ggplot2::margin(t = 4, r = 4, b = 1.6, l = 0,
                           unit = "mm"),
      legend.position = "bottom",
      legend.margin = ggplot2::margin(t = 0, r = 0, b = 0, l = 0,
                             unit = "mm"),
      legend.key.spacing = ggplot2::unit(0, "mm"),
      legend.text = ggplot2::element_text(margin = ggplot2::margin(t = 0, r = 0, b = 0, l = 0,
                                                 unit = "mm")),
      legend.text.position = "right",
      legend.title = ggplot2::element_blank(),
      legend.byrow = TRUE,
      )
}

#' IFAU theme
#'
#' Applies the minimal IFAU theme and sets colors, shapes, and linetypes.
#' 
#' @export
theme_ifau <- function(){list(theme_ifau_minimal(),
                              ggplot2::guides(x = ggplot2::guide_axis(cap = "lower",
                                                    minor.ticks = TRUE),
                                     y = ggplot2::guide_axis(cap = "lower",
                                                    minor.ticks = TRUE)),
                              scale_color_ifau(),
                              scale_fill_ifau(),
                              scale_shape_ifau(),
                              scale_linetype_ifau()
                              )}
