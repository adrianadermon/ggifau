% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ifau_save.R
\name{ifau_save}
\alias{ifau_save}
\title{Export graph to file}
\usage{
ifau_save(
  filename,
  plot = last_plot(),
  device = NULL,
  path = NULL,
  scale = 1,
  width = 12.4,
  height = 6.9,
  units = "cm",
  dpi = 300,
  limitsize = TRUE,
  bg = NULL,
  create.dir = FALSE,
  ...
)
}
\arguments{
\item{filename}{File name to create on disk.}

\item{plot}{Plot to save, defaults to last plot displayed.}

\item{device}{Device to use. Can either be a device function
(e.g. \link{png}), or one of "eps", "ps", "tex" (pictex),
"pdf", "jpeg", "tiff", "png", "bmp", "svg" or "wmf" (windows only). If
\code{NULL} (default), the device is guessed based on the \code{filename} extension.}

\item{path}{Path of the directory to save plot to: \code{path} and \code{filename}
are combined to create the fully qualified file name. Defaults to the
working directory.}

\item{scale}{Multiplicative scaling factor.}

\item{width, height}{Plot size in units expressed by the \code{units} argument.
If not supplied, uses the size of the current graphics device.}

\item{units}{One of the following units in which the \code{width} and \code{height}
arguments are expressed: \code{"in"}, \code{"cm"}, \code{"mm"} or \code{"px"}.}

\item{dpi}{Plot resolution. Also accepts a string input: "retina" (320),
"print" (300), or "screen" (72). Applies only to raster output types.}

\item{limitsize}{When \code{TRUE} (the default), \code{ggsave()} will not
save images larger than 50x50 inches, to prevent the common error of
specifying dimensions in pixels.}

\item{bg}{Background colour. If \code{NULL}, uses the \code{plot.background} fill value
from the plot theme.}

\item{create.dir}{Whether to create new directories if a non-existing
directory is specified in the \code{filename} or \code{path} (\code{TRUE}) or return an
error (\code{FALSE}, default). If \code{FALSE} and run in an interactive session,
a prompt will appear asking to create a new directory when necessary.}

\item{...}{Other arguments passed on to the graphics device function,
as specified by \code{device}.}
}
\description{
\code{ifau_save()} is a simple wrapper for \code{ggsave} from the \code{ggplot2} package,
setting the default width and height to the appropriate values for IFAU reports.
}
\seealso{
\link[ggplot2:ggsave]{ggplot2::ggsave} which this function wraps.
}
