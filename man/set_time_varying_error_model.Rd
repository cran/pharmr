% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_wrapper.R
\name{set_time_varying_error_model}
\alias{set_time_varying_error_model}
\title{set_time_varying_error_model}
\usage{
set_time_varying_error_model(model, cutoff, idv = "TIME")
}
\arguments{
\item{model}{(Model) Pharmpy model}

\item{cutoff}{(numeric) A value at the given quantile over idv column}

\item{idv}{(str) Time or time after dose, default is Time}
}
\value{
(Model) Pharmpy model object
}
\description{
Set a time varying error model per time cutoff
}
\examples{
\dontrun{
model <- load_example_model("pheno")
model <- set_time_varying_error_model(model, cutoff=1.0)
model$statements$find_assignment("Y")
}

}
