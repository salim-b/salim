% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/salim.gen.R
\name{update_zdaarau_pkgs}
\alias{update_zdaarau_pkgs}
\title{Update R packages from the Centre for Democracy Studies Aarau (ZDA)}
\usage{
update_zdaarau_pkgs(
  pkgs = c("rdb.report", "fokus", "rdb", "swissevote"),
  dependencies = TRUE,
  from_cran = FALSE
)
}
\arguments{
\item{pkgs}{R pkgs to be updated. A subset of:
\itemize{
\item \code{"rdb.report"}
\item \code{"fokus"}
\item \code{"rdb"}
\item \code{"swissevote"}
}}

\item{dependencies}{Whether or not to also install uninstalled packages which \code{pkgs} depend on/link to/import/suggest (and so on recursively). See
\code{\link[=install.packages]{install.packages()}} for details.}

\item{from_cran}{Whether or not to install \code{pkgs} from a \href{https://en.wikipedia.org/wiki/R_package#Comprehensive_R_Archive_Network_(CRAN)}{CRAN} repository
if possible. The repository URLs set in the \code{\link[=options]{repos}} \R option are used by default, with fallback to \verb{https://cloud.r-project.org/}. If \code{FALSE},
the latest \emph{development} versions are always installed, regardless of whether \code{pkgs} are available on CRAN or not.}
}
\value{
\code{pkgs}, invisibly.
}
\description{
Installs/updates all of the \href{https://gitlab.com/zdaarau/rpkgs}{R packages from the Centre for Democracy Studies Aarau (ZDA)} to the latest (development)
version.
}
\seealso{
Other development environment currentness functions:
\code{\link{lvl_up_quarto}()},
\code{\link{lvl_up_r}()},
\code{\link{lvl_up_rstudio}()},
\code{\link{update_rpkgs}()},
\code{\link{update_salims_pkgs}()}
}
\concept{dev_env}
