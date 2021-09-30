
<!-- README.md is generated from README.Rmd. Please edit that file -->

# spaceout

<!-- badges: start -->
<!-- badges: end -->

The goal of spaceout is to make it easier to follow the style guide
recommended in [pkgcheck CONTRIBUTING
guide](https://docs.ropensci.org/pkgcheck/CONTRIBUTING.html#development-guidelines).

## Installation

You can install the released version of spaceout with:

``` r
remotes::install_github("ropensci-review-tools/spaceout")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
code <- "say('hi'); list[[a[2]]]"
styler::style_text(code, style = spaceout::spaceout_style)
#> say ("hi")
#> list [[a [2]]]
```
