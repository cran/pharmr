% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_wrapper.R
\name{evaluate_epsilon_gradient}
\alias{evaluate_epsilon_gradient}
\title{evaluate_epsilon_gradient}
\usage{
evaluate_epsilon_gradient(
  model,
  etas = NULL,
  parameters = NULL,
  dataset = NULL
)
}
\arguments{
\item{model}{(Model) Pharmpy model}

\item{etas}{(data.frame (optional)) Optional list of eta values}

\item{parameters}{(list(str=numeric) (optional)) Optional list of parameters and values}

\item{dataset}{(data.frame (optional)) Optional dataset}
}
\value{
(data.frame) Gradient
}
\description{
Evaluate the numeric epsilon gradient

The gradient is evaluated at the current model parameter values
or optionally at the given parameter values.
The gradient is done for each data record in the model dataset
or optionally using the dataset argument.
The gradient is done at the current eta values
or optionally at the given eta values.

This function currently only support models without ODE systems
}
\examples{
\dontrun{
model <- load_example_model("pheno_linear")
results <- load_example_modelfit_results("pheno_linear")
etas <- results$individual_estimates
evaluate_epsilon_gradient(model, etas=etas)
}
}
\seealso{
evaluate_eta_gradient : Evaluate the eta gradient
}
