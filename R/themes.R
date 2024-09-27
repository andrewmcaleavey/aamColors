#' Blue theme
#'
#' Taken from: https://emanuelaf.github.io/own-ggplot-theme.html
#'
#' @return Whatever the ggplot object is
#' @export
#'
#' @examples
#' \dontrun{
#' require(ggplot2)
#' data(iris)
#' ggplot(iris, aes(x = Petal.Length)) +
#' geom_histogram() +
#' blue_theme()
#' }
blue_theme <- function() {
  ggplot2::theme(
    # add border 1)
    panel.border = ggplot2::element_rect(colour = "blue", fill = NA, linetype = 2),
    # color background 2)
    panel.background = element_rect(fill = "aliceblue"),
    # modify grid 3)
    panel.grid.major.x = ggplot2::element_line(colour = "steelblue", linetype = 3, size = 0.5),
    panel.grid.minor.x = ggplot2::element_blank(),
    panel.grid.major.y =  ggplot2::element_line(colour = "steelblue", linetype = 3, size = 0.5),
    panel.grid.minor.y = ggplot2::element_blank(),
    # modify text, axis and colour 4) and 5)
    axis.text = ggplot2::element_text(colour = "steelblue", face = "italic", family = "Times New Roman"),
    axis.title = ggplot2::element_text(colour = "steelblue", family = "Times New Roman"),
    axis.ticks = ggplot2::element_line(colour = "steelblue"),
    # legend at the bottom 6)
    legend.position = "bottom"
  )
}

#' Summer day theme
#'
#' @return Ggplot object
#' @export
#'
#' @examples
#' \dontrun{
#' require(ggplot2)
#' data(iris)
#' ggplot(iris, aes(x = Petal.Length)) +
#' geom_histogram() +
#' theme_summer_day()
#' }
theme_summer_day <- function(){
  ggplot2::theme(
    # all text
    text = ggplot2::element_text(family = "Times New Roman",
                                 colour = "steelblue"),
    # color background
    panel.background = ggplot2::element_rect(fill = "#FFFDCF"),
    # plot.background = ggplot2::element_rect(fill = "#FFFDCF"),
    # modify grid
    panel.grid.major.x = ggplot2::element_line(colour = "steelblue",
                                               linetype = 3,
                                               linewidth = 0.5),
    panel.grid.minor.x = ggplot2::element_blank(),
    panel.grid.major.y =  ggplot2::element_line(colour = "steelblue",
                                                linetype = 3,
                                                linewidth = 0.5),
    panel.grid.minor.y = ggplot2::element_blank(),
    # modify text
    axis.text = ggplot2::element_text(colour = "steelblue",
                                      face = "italic",
                                      family = "Times New Roman"),
    axis.title = ggplot2::element_text(colour = "steelblue",
                                       family = "Times New Roman"),
    # modify axis ticks
    axis.ticks = ggplot2::element_line(colour = "steelblue"),
    # modify legend
    # legend.background = ggplot2::element_rect(fill = "#c1d8cc"),
    # modify axis text
    title = element_text(hjust = 0),
    # modify title position
    plot.title = element_text(hjust = 0.5)
  )
}
