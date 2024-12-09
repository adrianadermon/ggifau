#' @import ggplot2
#' @importFrom ggplot2 %+replace%
#' @export

theme_ifau <- function() {
  ggplot2::theme_minimal() %+replace%
    theme(
      text = element_text(size = 8),
      axis.line = element_line(linewidth = 0.2/.75),
      axis.ticks = element_line(linewidth = 0.16/.75),
      axis.ticks.length = unit(1.14, "mm"),
      axis.minor.ticks.length = unit(0.57, "mm"),
      axis.text = element_text(size = 8,),
      axis.text.x = element_text(margin = margin(t = 0.7, r = 0,
                                                 b = 0, l = 0,
                                                 unit = "mm")),
      axis.text.y = element_text(hjust = 1,
                                 margin = margin(t = 0, r = 0.7,
                                                 b = 0, l = 0,
                                                 unit = "mm")),
      axis.title.x = element_text(margin = margin(t = 0.8, r = 0.8,
                                                  b = 0.8, l = 0.8,
                                                  unit = "mm")),
      axis.title.y = element_text(margin = margin(t = 0.8, r = 0.8,
                                                  b = 0.8, l = 0.8,
                                                  unit = "mm"),
                                  angle = 90),
      panel.grid = element_line(linewidth = 0.15/0.75,
                                linetype = "21",
                                color = "#E6E9EB"),
      panel.grid.minor = element_blank(),
      plot.margin = margin(t = 4, r = 4, b = 1.6, l = 0,
                           unit = "mm"),
      legend.position = "bottom",
      legend.margin = margin(t = 0, r = 0, b = 0, l = 0,
                             unit = "mm"),
      legend.key.spacing = unit(0, "mm"),
      legend.text = element_text(margin = margin(t = 0, r = 0, b = 0, l = 0,
                                                 unit = "mm")),
      legend.text.position = "right",
      legend.title = element_blank(),
      legend.byrow = TRUE,
      ## plot.background = element_rect(fill = "yellow"),
      ## legend.background = element_rect(fill = "lightblue")
      )
}
