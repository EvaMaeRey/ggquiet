legend_adjust <- function(color, alpha){

  list(
    ggplot2::theme(legend.background = ggplot2::element_rect(fill = ggplot2::alpha(color, alpha))),
    ggplot2::theme(legend.background = ggplot2::element_line(color = ggplot2::alpha(color, alpha))),
    ggplot2::theme(legend.key = ggplot2::element_text(color = ggplot2::alpha(color, alpha))),
    ggplot2::theme(legend.title = ggplot2::element_text(color = ggplot2::alpha(color, alpha)))
  )

}

x_axis_adjust <- function(color, alpha, gridcolor){

  list(
    ggplot2::theme(axis.title.x = ggplot2::element_text(color = ggplot2::alpha(color, alpha))),
    ggplot2::theme( axis.text.x = ggplot2::element_text(color = ggplot2::alpha(color, alpha))),
    ggplot2::theme(axis.ticks.x = ggplot2::element_line(color = ggplot2::alpha(color, alpha))),
    ggplot2::theme(panel.grid.major.x = ggplot2::element_line(color = ggplot2::alpha(gridcolor, alpha))),
    ggplot2::theme(panel.grid.minor.x = ggplot2::element_line(color = ggplot2::alpha(gridcolor, alpha)))
  )

}

#' Title
#'
#' @param color
#'
#' @return
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(cars) +
#' aes(x = speed, y = dist) +
#' geom_point() +
#' theme_x_axis_quiet()
theme_x_axis_quiet <- function(color = "black", alpha = 0, gridcolor = "white"){

  list(
  x_axis_adjust(color = color, alpha = alpha, gridcolor = gridcolor)
  )

}

#' Title
#'
#' @param color
#'
#' @return
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(cars) +
#' aes(x = speed, y = dist) +
#' geom_point() +
#' theme_quiet() +
#' labs(title = "Hello") +
#' theme_x_axis_loud()
theme_x_axis_loud <- function(color = "black", alpha = 1, gridcolor = "white"){

    x_axis_adjust(color = color, alpha = alpha, gridcolor = gridcolor)

}




y_axis_adjust <- function(color, alpha, gridcolor){

  list(
    ggplot2::theme(axis.title.y =       ggplot2::element_text(color = ggplot2::alpha(color, alpha))),
    ggplot2::theme( axis.text.y =       ggplot2::element_text(color = ggplot2::alpha(color, alpha))),
    ggplot2::theme(axis.ticks.y =       ggplot2::element_line(color = ggplot2::alpha(color, alpha))),
    ggplot2::theme(panel.grid.major.y = ggplot2::element_line(color = ggplot2::alpha(gridcolor, alpha))),
    ggplot2::theme(panel.grid.minor.y = ggplot2::element_line(color = ggplot2::alpha(gridcolor, alpha)))
  )

}


#' Title
#'
#' @param color
#'
#' @return
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(cars) +
#' aes(x = speed, y = dist) +
#' geom_point() +
#' theme_y_axis_quiet()
theme_y_axis_quiet <- function(color = "black", alpha = 0, gridcolor = "white"){

  y_axis_adjust(color = color, alpha = alpha, gridcolor = gridcolor)

}


#' Title
#'
#' @param color
#'
#' @return
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(cars) +
#' aes(x = speed, y = dist) +
#' geom_point() +
#' theme_quiet() +
#' labs(title = "Hello") +
#' theme_y_axis_loud()
theme_y_axis_loud <- function(color = "black", alpha = 1, gridcolor = "white"){


  y_axis_adjust(color = color, alpha = alpha, gridcolor = gridcolor)


}

titles_adjust <- function(color, alpha){

  list(
    ggplot2::theme(plot.title    = ggplot2::element_text(color = ggplot2::alpha(color, alpha))),
    ggplot2::theme(plot.subtitle = ggplot2::element_text(color = ggplot2::alpha(color, alpha))),
    ggplot2::theme(plot.caption  = ggplot2::element_text(color = ggplot2::alpha(color, alpha))),
    ggplot2::theme(plot.tag      = ggplot2::element_text(color = ggplot2::alpha(color, alpha)))
  )

}


#' Title
#'
#' @param color
#'
#' @return
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(cars) +
#' aes(x = speed, y = dist) +
#' geom_point() +
#' labs(title = "hi") +
#' labs(caption = "bye") +
#' theme_titles_quiet()
theme_titles_quiet <- function(color = "black"){

  titles_adjust(color = color, alpha = 0)

}


#' Title
#'
#' @param color
#'
#' @return
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(cars) +
#' aes(x = speed, y = dist) +
#' geom_point() +
#' theme_quiet() +
#' labs(title = "Hello") +
#' theme_titles_loud()
theme_titles_loud <- function(color = "black"){

  titles_adjust(color = color, alpha = 1)

}
