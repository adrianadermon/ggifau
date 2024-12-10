#' IFAU colors
#'
#' @param n Number of colors
colors_ifau <- function(n) {
  colors <- c("#12304A", # IFAU blue
              "#F2C913",  # IFAU yellow
              "#5F7562", # gray-green
              "#BA5F6D", # pink
              "#61445A", # dark purple
              "#5C7987", # gray-blue
              "#CFD3D4") # IFAU gray
  colors[1:n]
}

colors_ifau_fun <- function() {
  colors_ifau
}

#' IFAU shapes
#' 
#' @param n Number of shapes
shapes_ifau <- function(n) {
  shapes <- c(
    16,
    15,
    17,
    18,
    3,
    4,
    1)
  shapes[1:n]
}

shapes_ifau_fun <- function() {
  shapes_ifau
}

#' IFAU linetypes
#' 
#' @param n Number of linetypes
linetypes_ifau <- function(n) {
  linetypes <- c("solid",
                 "51111111", # long dash, three dots
                 "32", # dash 
                 "211111", # short dash, two dots
                 "52", # long dash
                 "11", # tight dots
                 "21") # short dash
  linetypes[1:n]
}

linetypes_ifau_fun <- function() {
  linetypes_ifau
}

#' IFAU color scale
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
#' @inheritParams ggplot2::scale_fill_hue
#' @export
scale_fill_ifau <- function(...) {
  ggplot2::discrete_scale("fill", palette = colors_ifau_fun(), ...)
}

#' IFAU shape scale
#' 
#' @param ... Arguments passed on to `discrete_scale`
#' @export
scale_shape_ifau <- function(...) {
  ggplot2::discrete_scale("shape", palette = shapes_ifau_fun(), ...)
}

#' IFAU linetype scale
#' 
#' @param ... Arguments passed on to `discrete_scale`
#' @export
scale_linetype_ifau <- function(...) {
  ggplot2::discrete_scale("linetype", palette = linetypes_ifau_fun(), ...)
}

