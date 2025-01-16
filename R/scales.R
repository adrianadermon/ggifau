#' IFAU colors
#'
#' Return a vector of the first `n` colors from the IFAU color scheme.
#' 
#' @param n Number of colors
colors_ifau <- function(n = 7) {
  colors <- c("#12304A", # IFAU blue
              "#F2C913",  # IFAU yellow
              "#5F7562", # gray-green
              "#CF6977", # pink
              "#61445A", # dark purple
              "#446775", # gray-blue
              "#B6B9BA") # IFAU gray
  colors[1:n]
}

#' IFAU colors function
#'
#' Return the `colors_ifau` function, for use when defining custom color scales.
colors_ifau_fun <- function() {
  colors_ifau
}

#' IFAU shapes
#'
#' Return a vector of the first `n` point market shapes from the IFAU graph scheme.
#' 
#' @param n Number of shapes
shapes_ifau <- function(n = 7) {
  shapes <- c(
    16, # ●
    15, # ■
    17, # ▲
    18, # ◆
    3,  # +
    4,  # ×
    1)  # ◯
  shapes[1:n]
}

#' IFAU shapes function
#'
#' Return the `shapes_ifau` function, for use when defining custom shape scales.
shapes_ifau_fun <- function() {
  shapes_ifau
}

#' IFAU linetypes
#'
#' Return a vector of the first `n` line patterns from the IFAU graph scheme.
#' 
#' @param n Number of linetypes
linetypes_ifau <- function(n = 7) {
  linetypes <- c("solid",
                 "32", # short dash 
                 "11", # dot
                 "3212", # dash-dot
                 "63", # long dash
                 "211111", # short dash, two dots
                 "62121212") # long dash, three dots
  linetypes[1:n]
}

#' IFAU linetypes function
#'
#' Return the `linetypes_ifau` function, for use when defining custom linetype scales.
linetypes_ifau_fun <- function() {
  linetypes_ifau
}

#' IFAU color scale
#'
#' Use the IFAU colors scheme for `ggplot2` colors.
#' 
#' @inheritParams ggplot2::scale_color_hue
#' @export
scale_color_ifau <- function(...) {
  ggplot2::discrete_scale("colour", palette = colors_ifau_fun(), ...)
}

#' @rdname scale_color_ifau
#' @export
scale_colour_ifau <- scale_color_ifau

#' IFAU fill scale
#'
#' Use the IFAU colors scheme for `ggplot2` fill colors.
#' 
#' @inheritParams ggplot2::scale_fill_hue
#' @export
scale_fill_ifau <- function(...) {
  ggplot2::discrete_scale("fill", palette = colors_ifau_fun(), ...)
}

#' IFAU shape scale
#' 
#' Use IFAU shapes for `ggplot2` markers.
#' 
#' @param ... Arguments passed on to `discrete_scale`
#' @export
scale_shape_ifau <- function(...) {
  ggplot2::discrete_scale("shape", palette = shapes_ifau_fun(), ...)
}

#' IFAU linetype scale
#' 
#' Use IFAU patterns for `ggplot2` lines.
#' 
#' @param ... Arguments passed on to `discrete_scale`
#' @export
scale_linetype_ifau <- function(...) {
  ggplot2::discrete_scale("linetype", palette = linetypes_ifau_fun(), ...)
}

