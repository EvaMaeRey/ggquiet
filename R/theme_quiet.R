
#' Title create a typical ggplot
#'
#' @return a ggplot2 object
#' @export
#'
#' @examples
#' create_basic_plot()
#'

create_basic_plot <- function(point_alpha = 1){

  ggplot2::ggplot(cars) +
    ggplot2::aes(x = speed) +
    ggplot2::aes(y = dist) +
    ggplot2::labs(y = "distance") +
    ggplot2::geom_point(alpha = point_alpha) +
    ggplot2::labs(x = "The\nSpeed") +
    # ggplot2::theme_classic(base_size = 16, base_family = "Times") +
    ggplot2::labs(title = "I'm a title") +
    ggplot2::labs(subtitle = "subtitles give detail") +
    ggplot2::labs(caption = "captions!") +
    ggplot2::theme(plot.title.position = "plot")

}


#' Title all elements to fully transparent
#'
#'
#' @return ggplot object
#' @export
#'
#' @examples
#' g <- create_basic_plot(point_alpha = .2)
#'
#' g +
#' theme_quiet(alpha = .1) +
#' theme_x_axis_loud()
theme_quiet <- function(alpha = 0, color = "black", gridcolor = "white"){

  list(
  ggplot2::theme(axis.line.x = ggplot2::element_line(color = ggplot2::alpha(color, alpha = alpha))),
  ggplot2::theme(axis.line.y = ggplot2::element_line(color = ggplot2::alpha(color, alpha = alpha))),
  ggplot2::theme(axis.title.x =  ggplot2::element_text(color = ggplot2::alpha(color, alpha = alpha))),
  ggplot2::theme(axis.text.x  =  ggplot2::element_text(color = ggplot2::alpha(color, alpha = alpha))),
  ggplot2::theme(axis.ticks.x =  ggplot2::element_line(color = ggplot2::alpha(color, alpha = alpha))),
  ggplot2::theme(axis.title.y =  ggplot2::element_text(color = ggplot2::alpha(color, alpha = alpha))),
  ggplot2::theme(axis.text.y  =  ggplot2::element_text(color = ggplot2::alpha(color, alpha = alpha))),
  ggplot2::theme(axis.ticks.y =  ggplot2::element_line(color = ggplot2::alpha(color, alpha = alpha))),
  ggplot2::theme(plot.title   =  ggplot2::element_text(color = ggplot2::alpha(color, alpha = alpha))),
  ggplot2::theme(plot.subtitle = ggplot2::element_text(color = ggplot2::alpha(color, alpha = alpha))),
  ggplot2::theme(plot.caption  = ggplot2::element_text(color = ggplot2::alpha(color, alpha = alpha))),
  ggplot2::theme(panel.grid = ggplot2::element_line(color = ggplot2::alpha(gridcolor, alpha = alpha)))
  )

}

#
# geoms_quiet <- function(color = "black", alpha = 0, fill = color){
#
#   # https://stackoverflow.com/questions/21174625/ggplot-how-to-set-default-color-for-all-geoms
#
#   ggplot2::update_geom_defaults("point",   list(colour = color, size = 2.5, alpha = .75))
#   ggplot2::update_geom_defaults("segment",   list(colour = color, size = 1.25, alpha = .75))
#   ggplot2::update_geom_defaults("rug",   list(colour = color, size = 1, alpha = .75))
#   ggplot2::update_geom_defaults("rect",   list(colour = color, size = 1, alpha = .75))
#   ggplot2::update_geom_defaults("label",   list(fill = fill, color = "grey35", size = 5))
#   ggplot2::update_geom_defaults("recttransparent",  list(color = color, size = .5))
#
#
#   # params <- ls(pattern = '^geom_', env = as.environment('package:ggxmean'))
#   # geoms <- gsub("geom_", "", params)
#   #
#   # lapply(geoms, update_geom_defaults, list(colour = "oldlace"))
#   # lapply(geoms, update_geom_defaults, list(colour = "oldlace"))
#
# }
