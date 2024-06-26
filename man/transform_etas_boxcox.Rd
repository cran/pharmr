% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_wrapper.R
\name{transform_etas_boxcox}
\alias{transform_etas_boxcox}
\title{transform_etas_boxcox}
\usage{
transform_etas_boxcox(model, list_of_etas = NULL)
}
\arguments{
\item{model}{(Model) Pharmpy model to apply boxcox transformation to.}

\item{list_of_etas}{(array(str) or str (optional)) Name/names of etas to transform. If NULL, all etas will be transformed (default).}
}
\value{
(Model) Pharmpy model object
}
\description{
Applies a boxcox transformation to selected etas

Initial estimate for lambda is 0.1 with bounds (-3, 3).
}
\examples{
\dontrun{
model <- load_example_model("pheno")
model <- transform_etas_boxcox(model, c("ETA_CL"))
model$statements$before_odes$full_expression("CL")
}
}
\seealso{
transform_etas_tdist

transform_etas_john_draper
}
