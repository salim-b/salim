# salim

[![CRAN Status](https://r-pkg.org/badges/version/salim)](https://cran.r-project.org/package=salim){.pkgdown-release}

salim includes a diverse mix of functions which have not found their home in a more suitable place yet. The package kinda serves as an incubator for not yet fully matured code and thus will most probably never be made available through CRAN.

This is arguably a [*low-cohesion*](https://en.wikipedia.org/wiki/Cohesion_(computer_science)) package.

## Installation

To install the latest development version of salim, run the following in R:

``` r
if (!("remotes" %in% rownames(installed.packages()))) {
  install.packages(pkgs = "remotes",
                   repos = "https://cloud.r-project.org/")
}

remotes::install_gitlab(repo = "salim_b/r/pkgs/salim")
```

## Usage

The (function) reference is found [here](reference).

## Package configuration

Some of salim's functionality is controlled via package-specific global configuration which can either be set via [R options](https://rdrr.io/r/base/options.html) or [environment variables](https://en.wikipedia.org/wiki/Environment_variable) (the former take precedence). This configuration includes:

::: table-wide
  **Description**                                                                                                                                                                                                                                                  **R option**               **Environment variable**     **Default value**
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------------------------- ---------------------------- -------------------
  Locale identifier consisting of a [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639-1) or [ISO 639-3](https://en.wikipedia.org/wiki/ISO_639-3) language code plus an optional country identifier separated by a hyphen (`-`). For example `"fr"` or `"de-CH"`.   `salim.locale`             `R_SALIM_LOCALE`             `"en-US"`
  Body font family for [plot theming functions](https://salim.rpkg.dev/reference/#plot-theming).                                                                                                                                                                   `salim.font_family_body`   `R_SALIM_FONT_FAMILY_BODY`   `"Alegreya Sans"`
  Body color for [plot theming functions](https://salim.rpkg.dev/reference/#plot-theming).                                                                                                                                                                         `salim.plot_color_body`    `R_SALIM_PLOT_COLOR_BODY`    `"#343a40"`
  Background color for [plot theming functions](https://salim.rpkg.dev/reference/#plot-theming).                                                                                                                                                                   `salim.plot_color_bg`      `R_SALIM_PLOT_COLOR_BG`      `"#f2f2f2"`
  Grid color for [plot theming functions](https://salim.rpkg.dev/reference/#plot-theming).                                                                                                                                                                         `salim.plot_color_grid`    `R_SALIM_PLOT_COLOR_GRID`    `"#d9d9d9"`
:::

## Development

### R Markdown format

This package's source code is written in the [R Markdown](https://rmarkdown.rstudio.com/) file format to facilitate practices commonly referred to as [*literate programming*](https://en.wikipedia.org/wiki/Literate_programming). It allows the actual code to be freely mixed with explanatory and supplementary information in expressive Markdown format instead of having to rely on [`#` comments](https://rstudio.github.io/r-manuals/r-lang/Parser.html#comments) only.

All the `.gen.R` suffixed R source code found under [`R/`](https://gitlab.com/salim_b/r/pkgs/salim/-/tree/master/R/) is generated from the respective R Markdown counterparts under [`Rmd/`](https://gitlab.com/salim_b/r/pkgs/salim/-/tree/master/Rmd/) using [`pkgpurl::purl_rmd()`](https://pkgpurl.rpkg.dev/dev/reference/purl_rmd.html)[^1]. Always make changes only to the `.Rmd` files -- never the `.R` files -- and then run `pkgpurl::purl_rmd()` to regenerate the R source files.

### Coding style

This package borrows a lot of the [Tidyverse](https://www.tidyverse.org/) design philosophies. The R code is guided by the [Tidy design principles](https://design.tidyverse.org/) and is formatted according to the [Tidyverse Style Guide](https://style.tidyverse.org/) (TSG) with the following exceptions:

-   Line width is limited to **160 characters**, double the [limit proposed by the TSG](https://style.tidyverse.org/syntax.html#long-lines) (80 characters is ridiculously little given today's high-resolution wide screen monitors).

    Furthermore, the preferred style for breaking long lines differs. Instead of wrapping directly after an expression's opening bracket as [suggested by the TSG](https://style.tidyverse.org/syntax.html#long-lines), we prefer two fewer line breaks and indent subsequent lines within the expression by its opening bracket:

    ``` r
    # TSG proposes this
    do_something_very_complicated(
      something = "that",
      requires = many,
      arguments = "some of which may be long"
    )

    # we prefer this
    do_something_very_complicated(something = "that",
                                  requires = many,
                                  arguments = "some of which may be long")
    ```

    This results in less vertical and more horizontal spread of the code and better readability in pipes.

-   Usage of [magrittr's compound assignment pipe-operator `%<>%`](https://magrittr.tidyverse.org/reference/compound.html) is desirable[^2].

-   Usage of [R's right-hand assignment operator `->`](https://rdrr.io/r/base/assignOps.html) is not allowed[^3].

-   R source code is *not* split over several files as [suggested by the TSG](https://style.tidyverse.org/package-files.html) but instead is (as far as possible) kept in the single file [`Rmd/salim.Rmd`](https://gitlab.com/salim_b/r/pkgs/salim/-/tree/master/Rmd/salim.Rmd) which is well-structured thanks to its [Markdown support](#r-markdown-format).

As far as possible, these deviations from the TSG plus some additional restrictions are formally specified in [`pkgpurl::default_linters`](https://pkgpurl.rpkg.dev/reference/default_linters), which is (by default) used in [`pkgpurl::lint_rmd()`](https://pkgpurl.rpkg.dev/reference/lint_rmd), which in turn is the recommended way to lint this package.

## See also

-   The [**pal**](https://pal.rpkg.dev/) package for a collection of additional, more mature convenience/utility functions by the same author.

[^1]: The very idea to leverage the R Markdown format to author R packages was originally proposed by Yihui Xie. See his excellent [blog post](https://yihui.org/rlp/) for his point of view on the advantages of literate programming techniques and some practical examples. Note that using `pkgpurl::purl_rmd()` is a less cumbersome alternative to the Makefile approach outlined by him.

[^2]: The TSG [explicitly instructs to avoid this operator](https://style.tidyverse.org/pipes.html#assignment-2) -- presumably because it's relatively unknown and therefore might be confused with the forward pipe operator `%>%` when skimming code only briefly. I don't consider this to be an actual issue since there aren't many sensible usage patterns of `%>%` at the beginning of a pipe sequence inside a function -- I can only think of creating side effects and relying on [R's implicit return of the last evaluated expression](https://rdrr.io/r/base/function.html). Therefore -- and because I really like the `%<>%` operator -- it's usage is welcome.

[^3]: The TSG [explicitly accepts `->` for assignments at the end of a pipe sequence](https://style.tidyverse.org/pipes.html#assignment-2) while Google's R Style Guide [considers this bad practice](https://google.github.io/styleguide/Rguide.html#right-hand-assignment) because it "makes it harder to see in code where an object is defined". I second the latter.
