% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_wrapper.R
\name{get_sigmas}
\alias{get_sigmas}
\title{get_sigmas}
\usage{
get_sigmas(model)
}
\arguments{
\item{model}{(Model) Pharmpy model object}
}
\value{
(Parameters) A copy of all sigma parameters
}
\description{
Get all sigmas (residual error variability parameters) of a model
}
\examples{
\dontrun{
model <- load_example_model("pheno")
get_sigmas(model)
}
}
\seealso{
get_thetas : Get theta parameters

get_omegas : Get omega parameters
}
