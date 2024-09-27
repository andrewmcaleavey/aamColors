#' AAM Palettes
#'
#' @param name Which palette? One of "summer" or "winter"
#' @param n How many colors. Can be missing.
#' @param all_palettes List of palettes to consider, default is fine.
#' @param type One of c("discrete", "continuous")
#'
#' @return a structured palette S3 object
#' @export
#'
#' @examples
#' aam_palettes("summer")
#' \dontrun{
#' require(ggplot2)
#' data(iris)
#' }
aam_palettes = function(name,
                        n,
                        all_palettes = all_aam_colours,
                        type = c("discrete", "continuous")) {
  palette = all_palettes[[name]]
  if (missing(n)) {
    n = length(palette)
  }
  type = match.arg(type)
  out = switch(type,
               continuous = grDevices::colorRampPalette(palette)(n),
               discrete = palette[1:n]
  )
  structure(out, name = name, class = "palette")
}

#' Discrete colors from aamColors
#'
#' @param name Which palette to use.
#'
#' @return ggplot2 object
#' @export
#'
#' @examples
#' \dontrun{
#' require(ggplot2)
#' data(iris)
#' ggplot(iris, aes(x = Petal.Length)) +
#' geom_histogram(aes(color = Species)) +
#' scale_color_aam_d("summer")
#' }
scale_colour_aam_d = function(name) {
  ggplot2::scale_colour_manual(values = aam_palettes(name,
                                                     type = "discrete"))
}

#' Discrete fills from aamColors
#'
#' @param name Which palette to use.
#'
#' @return ggplot2 object
#' @export
#'
#' @examples
#' \dontrun{
#' require(ggplot2)
#' data(iris)
#' #' ggplot(iris, aes(x = Petal.Length)) +
#' geom_histogram(aes(fill = Species)) +
#' scale_fill_aam_d("summer")
#'}
scale_fill_aam_d = function(name) {
  ggplot2::scale_fill_manual(values = aam_palettes(name,
                                                   type = "discrete"))
}

#' Continuous colors from aamColors
#'
#' @param name Palette to use.
#'
#' @return ggplot2 object
#' @export
#'
#' @examples
#' \dontrun{
#' require(ggplot2)
#' data(iris)
#' }
scale_colour_aam_c = function(name) {
  ggplot2::scale_colour_gradientn(colours = aam_palettes(name = name,
                                                         type = "continuous"))
}

#' Title
#'
#' @param name
#'
#' @return ggplot2 object
#' @export
#'
#' @examples
#' \dontrun{
#' require(ggplot2)
#' data(iris)
#' }
scale_fill_aam_c = function(name) {
  ggplot2::scale_fill_gradientn(colours = aam_palettes(name = name,
                                                       type = "continuous"))
}
