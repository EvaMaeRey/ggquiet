
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggquiet: *Shhhhhh!*

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of ggquiet is to be able to reveal components of a fully built
up plot – quietly. The strategy is to set elements to fully transparent,
and then ‘turn on’ the element by changing the transparency to opaque.

“Quiet” refers to two things. If you simply build up a ggplot you will
get “noisiness” in that the plot space will bounce around to adjust for
title positions, axis positions and legend positions (oops! I haven’t
though about how to work on this part - legends - ugh I’m not sure we
can get it done. hmmm hmm hmm). By having the elements there but fully
transparent (they are also “quiet”), we won’t get the shifting around of
the plot space as we “add” them.

## Installation

You can install the released version of ggquiet from
[CRAN](https://CRAN.R-project.org) with:

`install.packages("ggquiet")`

And the development version from [GitHub](https://github.com/) with:

`# install.packages("devtools")`
`devtools::install_github("EvaMaeRey/ggquiet")`

## Example

Suppose you are building this plot:

``` r
library(magrittr)
#> Warning: package 'magrittr' was built under R version 3.6.2
library(ggplot2)
#> Warning: package 'ggplot2' was built under R version 3.6.2
library(ggquiet)
## basic example code

ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_point() +
  aes(color = speed) +
  labs(title = "Correlation") + 
  labs(caption = "cars dataset") +
  theme(legend.position = c(.2,.8), 
        legend.direction = "horizontal")
```

<img src="man/figures/README-example-1.png" width="100%" />

Now how to reveal the elements one by one *and* for positions to stay
the same throughout.

``` r
ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_blank() +
  labs(title = "Correlation") + 
  labs(caption = "cars dataset") +
  theme(legend.position = c(.2,.8), 
        legend.direction = "horizontal") +
  theme_quiet()
```

<img src="man/figures/README-start-1.png" width="100%" />

``` r
last_plot() + 
  theme_y_axis_loud()
```

<img src="man/figures/README-out-1.png" width="100%" />

``` r
last_plot() + 
  theme_x_axis_loud()
```

<img src="man/figures/README-out-2.png" width="100%" />

``` r
last_plot() +
  geom_point(data = . %>% dplyr::slice(4))
```

<img src="man/figures/README-out-3.png" width="100%" />

``` r
last_plot() + 
  geom_point()
```

<img src="man/figures/README-out-4.png" width="100%" />

``` r
last_plot() + 
  aes(color = speed)
```

<img src="man/figures/README-out-5.png" width="100%" />

``` r
last_plot() +
  theme_titles_loud()
```

<img src="man/figures/README-out-6.png" width="100%" />
