% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_wrapper.R
\name{append_estimation_step_options}
\alias{append_estimation_step_options}
\title{append_estimation_step_options}
\usage{
append_estimation_step_options(model, tool_options, idx)
}
\arguments{
\item{model}{(Model) Pharmpy model}

\item{tool_options}{(list(str=any)) any additional tool specific options}

\item{idx}{(numeric) index of estimation step (starting from 0)}
}
\value{
(Model) Pharmpy model object
}
\description{
Append estimation step options

Appends options to an existing estimation step.
}
\examples{
\dontrun{
model <- load_example_model("pheno")
opts <- list('NITER'=1000, 'ISAMPLE'=100)
model <- append_estimation_step_options(model, tool_options=opts, idx=0)
est <- model$execution_steps[1]
length(est$tool_options)
}
}
\seealso{
add_estimation_step

set_estimation_step

remove_estimation_step

add_parameter_uncertainty_step

remove_parameter_uncertainty_step

set_evaluation_step
}
