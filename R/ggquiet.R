
#' Title create a typical ggplot
#'
#' @return a ggplot2 object
#' @export
#'
#' @examples
#' create_basic_plot()
#'
create_basic_plot <- function(){

  ggplot2::ggplot(cars) +
    ggplot2::aes(x = speed) +
    ggplot2::aes(y = dist) +
    ggplot2::geom_point() +
    ggplot2::labs(x = "The\nSpeed") +
    ggplot2::theme_classic(base_size = 16, base_family = "Times") +
    ggplot2::labs(title = "I'm a title") +
    ggplot2::labs(subtitle = "subtitles give detail") +
    ggplot2::labs(caption = "captions!")

}


#' Title all elements to fully transparent
#'
#'
#' @return
#' @export
#'
#' @examples
#' create_basic_plot() +
#' theme_quiet()
theme_quiet <- function(){

  list(
  ggplot2::theme(axis.title.x =  ggplot2::element_text(color = ggplot2::alpha("black", 0))),
  ggplot2::theme(axis.text.x  =  ggplot2::element_text(color = ggplot2::alpha("black", 0))),
  ggplot2::theme(axis.ticks.x =  ggplot2::element_line(color = ggplot2::alpha("black", 0))),
  ggplot2::theme(panel.grid.major.x = ggplot2::element_line(color = ggplot2::alpha("black", 0))),
  ggplot2::theme(panel.grid.minor.x = ggplot2::element_line(color = ggplot2::alpha("black", 0))),
  ggplot2::theme(axis.title.y =  ggplot2::element_text(color = ggplot2::alpha("black", 0))),
  ggplot2::theme(axis.text.y  =  ggplot2::element_text(color = ggplot2::alpha("black", 0))),
  ggplot2::theme(axis.ticks.y =  ggplot2::element_line(color = ggplot2::alpha("black", 0))),
  ggplot2::theme(panel.grid.major.y = ggplot2::element_line(color = ggplot2::alpha("black", 0))),
  ggplot2::theme(panel.grid.minor.y = ggplot2::element_line(color = ggplot2::alpha("black", 0))),
  ggplot2::theme(plot.title   =  ggplot2::element_text(color = ggplot2::alpha("black", 0))),
  ggplot2::theme(plot.subtitle = ggplot2::element_text(color = ggplot2::alpha("black", 0))),
  ggplot2::theme(plot.caption  = ggplot2::element_text(color = ggplot2::alpha("black", 0)))
  )

}

x_axis_adjust <- function(color, alpha){

  list(
  ggplot2::theme(axis.title.x = ggplot2::element_text(color = ggplot2::alpha(color, alpha))),
  ggplot2::theme( axis.text.x = ggplot2::element_text(color = ggplot2::alpha(color, alpha))),
  ggplot2::theme(axis.ticks.x = ggplot2::element_line(color = ggplot2::alpha(color, alpha))),
  ggplot2::theme(panel.grid.major.x = ggplot2::element_line(color = ggplot2::alpha(color, alpha))),
  ggplot2::theme(panel.grid.minor.x = ggplot2::element_line(color = ggplot2::alpha(color, alpha)))
  )

}

y_axis_adjust <- function(color, alpha){

  list(
  ggplot2::theme(axis.title.y = ggplot2::element_text(color = ggplot2::alpha(color, alpha))),
  ggplot2::theme( axis.text.y = ggplot2::element_text(color = ggplot2::alpha(color, alpha))),
  ggplot2::theme(axis.ticks.y = ggplot2::element_line(color = ggplot2::alpha(color, alpha))),
  ggplot2::theme(panel.grid.major.y = ggplot2::element_line(color = ggplot2::alpha(color, alpha))),
  ggplot2::theme(panel.grid.minor.y = ggplot2::element_line(color = ggplot2::alpha(color, alpha)))
  )

}

titles_adjust <- function(color, alpha){

  list(
  ggplot2::theme(plot.title    = ggplot2::element_text(color = ggplot2::alpha(color, alpha))),
  ggplot2::theme(plot.subtitle = ggplot2::element_text(color = ggplot2::alpha(color, alpha))),
  ggplot2::theme(plot.caption  = ggplot2::element_text(color = ggplot2::alpha(color, alpha))),
  ggplot2::theme(plot.tag = ggplot2::element_text(color = ggplot2::alpha(color, alpha)))
  )

}

