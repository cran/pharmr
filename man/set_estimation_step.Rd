% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_wrapper.R
\name{set_estimation_step}
\alias{set_estimation_step}
\title{set_estimation_step}
\usage{
set_estimation_step(model, method, idx = 0, ...)
}
\arguments{
\item{model}{(Model) Pharmpy model}

\item{method}{(str) estimation method to change to}

\item{idx}{(numeric) index of estimation step, default is 0 (first estimation step)}

\item{...}{Arguments to pass to EstimationStep (such as interaction, evaluation)}
}
\value{
(Model) Pharmpy model object
}
\description{
Set estimation step

Sets estimation step for a model. Methods currently supported are:
FO, FOCE, ITS, LAPLACE, IMPMAP, IMP, SAEM, BAYES
}
\examples{
\dontrun{
model <- load_example_model("pheno")
opts <- list('NITER'=1000, 'ISAMPLE'=100)
model <- set_estimation_step(model, 'IMP', evaluation=TRUE, tool_options=opts)
model$execution_steps[1]
}
}
\seealso{
add_estimation_step

remove_estimation_step

append_estimation_step_options

add_parameter_uncertainty_step

remove_parameter_uncertainty_step

set_evaluation_step
}
