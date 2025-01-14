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
      title = ggplot2::element_text(size = 8),
      axis.line = ggplot2::element_line(linewidth = 0.5/ggplot2::.pt),
      axis.ticks = ggplot2::element_line(linewidth = 0.4/ggplot2::.pt),
      axis.ticks.length = ggplot2::unit(3.5, "pt"),
      axis.minor.ticks.length = ggplot2::unit(1.75, "pt"),
      axis.text = ggplot2::element_text(size = 8,),
      axis.text.x = ggplot2::element_text(margin = ggplot2::margin(t = 0.5, r = 0,
                                                                   b = 0, l = 0,
                                                                   unit = "pt")),
      axis.text.y = ggplot2::element_text(hjust = 1,
                                          margin = ggplot2::margin(t = 0, r = 0.5,
                                                                   b = 0, l = 0,
                                                                   unit = "pt")),
      axis.title.x = ggplot2::element_text(margin = ggplot2::margin(t = 4, r = 0,
                                                                    b = 0, l = 0,
                                                                    unit = "pt")),
      axis.title.y = ggplot2::element_text(margin = ggplot2::margin(t = 0, r = 4,
                                                                    b = 0, l = 0,
                                                                    unit = "pt"),
                                           angle = 90),
      panel.grid = ggplot2::element_line(linewidth = 0.5/ggplot2::.pt,
                                         linetype = "21",
                                         color = "#E6E9EB"),
      panel.grid.minor = ggplot2::element_blank(),
      strip.text = ggplot2::element_text(size = 8),
      plot.margin = ggplot2::margin(t = 1.4, r = 2.8, b = 1.4, l = 0,
                                    unit = "mm"),
      legend.position = "bottom",
      legend.box.spacing = ggplot2::unit(2.1, "mm"),
      legend.margin = ggplot2::margin(t = 0, r = 0, b = 0, l = 0,
                                      unit = "mm"),
      legend.spacing = ggplot2::unit(11, "pt"),
      legend.key.spacing.x = ggplot2::unit(2, "pt"),
      legend.key.spacing.y = ggplot2::unit(1, "pt"),
      legend.text = ggplot2::element_text(size = 8,
                                          margin = ggplot2::margin(t = 0, r = 0, b = 0, l = 0,
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
                              scale_color_ifau(),
                              scale_fill_ifau(),
                              scale_shape_ifau(),
                              scale_linetype_ifau()
                              )}
