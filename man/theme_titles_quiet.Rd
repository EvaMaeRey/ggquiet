% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme_x_axis_quiet.R
\name{theme_titles_quiet}
\alias{theme_titles_quiet}
\title{Title}
\usage{
theme_titles_quiet(color = "black")
}
\arguments{
\item{color}{}
}
\value{

}
\description{
Title
}
\examples{
library(ggplot2)
ggplot(cars) +
aes(x = speed, y = dist) +
geom_point() +
labs(title = "hi") +
labs(caption = "bye") +
theme_titles_quiet()
}
