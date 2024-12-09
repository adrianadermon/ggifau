#' @import ggplot2
#' @export

colours_ifau <- function() {
  fun <- function(n) {
    colors <- c("#12304A", # IFAU blue
                "#F2C913",  # IFAU yellow
                "#5F7562", # gray-green
                "#BA5F6D", # pink
                "#61445A", # dark purple
                "#5C7987", # gray-blue
                "#CFD3D4") # IFAU gray
    ## colors <- c(
    ##   hsv(208 / 360, 0.75, 0.29), # IFAU blue
    ##   hsv(49 / 360, 0.92, 0.95), # IFAU yellow
    ##   hsv(128 / 360, 0.19, 0.46), # gray-green
    ##   hsv(351 / 360, 0.49, 0.73), # pink
    ##   hsv(314 / 360, 0.30, 0.38), # dark purple
    ##   hsv(200 / 360, 0.32, 0.53), # gray-blue
    ##   hsv(195 / 360, 0.02, 0.83)  # IFAU gray
    ## )
  colors[1:n]
}
fun
}

## IFAU color scale
#' @export
scale_colour_ifau <- function(...) {
  discrete_scale("colour", palette = colours_ifau(), ...)
}

## IFAU fill scale
#' @export
scale_fill_ifau <- function(...) {
  discrete_scale("fill", palette = colours_ifau(), ...)
}

shapes_ifau <- function() {
  fun <- function(n) {
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
  fun
}

## IFAU shape scale
#' @export
scale_shape_ifau <- function(...) {
  discrete_scale("shape", palette = shapes_ifau(), ...)
}

linetypes_ifau <- function() {
  fun <- function(n) {
    linetypes <- c("solid",
                   "51111111", # long dash, three dots
                   "32", # dash 
                   "211111", # short dash, two dots
                   "52", # long dash
                   "11", # tight dots
                   "21") # short dash
    linetypes[1:n]
  }
  fun
}

## IFAU linetype scale
#' @export
scale_linetype_ifau <- function(...) {
  discrete_scale("linetype", palette = linetypes_ifau(), ...)
}


#' @export
ggifau <- function() {
  ## Set default theme
  ggplot2::theme_set(theme_ifau())

  ## Set default colors
  ## colors_ifau <- c(hsv(208/360, 0.75, 0.29), # IFAU blue
  ##                  hsv(49/360, 0.92, 0.95),  # IFAU yellow
  ##                  hsv(128/360, 0.19, 0.46), # gray-green
  ##                  hsv(351/360, 0.49, 0.73), # pink
  ##                  hsv(314/360, 0.30, 0.38), # dark purple
  ##                  hsv(200/360, 0.32, 0.53), # gray-blue
  ##                  hsv(195/360, 0.02, 0.83)) # IFAU gray
  colors_ifau <- c("#12304A", # IFAU blue
                   "#F2C913",  # IFAU yellow
                   "#5F7562", # gray-green
                   "#BA5F6D", # pink
                   "#61445A", # dark purple
                   "#5C7987", # gray-blue
                   "#CFD3D4") # IFAU gray

  ## scale_fill_discrete <- function(...) {
  ##   ggplot2::scale_fill_manual(..., values = colors_ifau)
  ## }

  ## scale_colour_discrete <- function(...) {
  ##   ggplot2::scale_colour_manual(..., values = colors_ifau)
  ## }

  
  options("ggplot2.discrete.fill" = scale_fill_ifau)
  options("ggplot2.discrete.colour" = scale_colour_ifau)


  ## Modify geom default
  ggplot2::update_geom_defaults("line", aes(linewidth = 0.5))
  ggplot2::update_geom_defaults("vline", aes(linewidth = 0.25/0.75,
                                             color = "#A8ACAD",
                                             linetype = "42"))
  ggplot2::update_geom_defaults("bar", aes(fill = colors_ifau[1]))

  ## Set default shapes
  shapes_ifau <- c(
    16,
    15,
    17,
    18,
    3,
    4,
    1)

  scale_shape_discrete = function(...) {
    ggplot2::scale_shape_manual(..., values = shapes_ifau)
  }

  ## Set default linetypes
  linetypes_ifau <- c("solid",
                      "51111111", # long dash, three dots
                      "32", # dash 
                      "211111", # short dash, two dots
                      "52", # long dash
                      "11", # tight dots
                      "21") # short dash
  scale_linetype_discrete = function(...) {
    ggplot2::scale_linetype_manual(..., values = linetypes_ifau)
  }

  ## Set dodge as default for bar plots
  geom_col <- function(..., position = position_dodge()) {
    do.call(ggplot2::geom_col, c(list(...), position = position))
  }
}
