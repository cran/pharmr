% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_wrapper.R
\name{add_residuals}
\alias{add_residuals}
\title{add_residuals}
\usage{
add_residuals(model, res)
}
\arguments{
\item{model}{(Model) Pharmpy model}

\item{res}{(array(str)) List of residuals (e.g. c('CWRES'))}
}
\value{
(Model) Pharmpy model object
}
\description{
Add predictions and/or residuals

Add residuals to estimation step.

Added redidual variable(s) need to be one of the following :
c('RES', 'IRES', 'WRES', 'IWRES', 'CWRES')
}
\examples{
\dontrun{
model <- load_example_model("pheno")
model$execution_steps[-1].residuals
model <- add_residuals(model, c('WRES'))
model$execution_steps[-1].residuals
}
}
\seealso{
remove_predictions

remove_residuals

set_estimation_step

add_estimation_step

remove_estimation_step

append_estimation_step_options

add_parameter_uncertainty_step

remove_parameter_uncertainty_step
}
