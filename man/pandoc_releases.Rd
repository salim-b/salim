% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/salim.gen.R
\name{pandoc_releases}
\alias{pandoc_releases}
\title{List all available Pandoc releases}
\usage{
pandoc_releases()
}
\value{
A \link[tibble:tbl_df-class]{tibble}.
}
\description{
Uses \code{\link[gh:gh]{gh::gh()}} to fetch all available \href{https://docs.github.com/repositories/releasing-projects-on-github}{GitHub releases} of \href{https://pandoc.org/}{Pandoc}
via \href{https://docs.github.com/en/rest/reference/repos#list-releases}{GitHub's REST API} and returns them as a \link[tibble:tbl_df-class]{tibble} containing the two
columns \code{version_nr} and \code{release_id}.
}
\details{
Values of the column \code{release_id} can be used as input to \code{\link[=download_pandoc_binaries]{download_pandoc_binaries()}}.
}
\seealso{
Other Pandoc functions:
\code{\link{download_pandoc_binaries}()},
\code{\link{pandoc_release_assets}()},
\code{\link{pandoc_release_id_latest}()},
\code{\link{pandoc_tpl}()},
\code{\link{pandoc_version_latest}()}
}
\concept{pandoc}
