% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_wrapper.R
\name{run_modelfit}
\alias{run_modelfit}
\title{run_modelfit}
\usage{
run_modelfit(model_or_models = NULL, n = NULL, tool = NULL, ...)
}
\arguments{
\item{model_or_models}{(Model or array(Model) (optional)) A vector of models are one single model object}

\item{n}{(numeric (optional)) Number of models to fit. This is only used if the tool is going to be combined with other tools.}

\item{tool}{(str (optional)) Which tool to use for fitting. Currently 'nonmem' or 'nlmixr' can be used}

\item{...}{Arguments to pass to tool}
}
\value{
(ModelfitResults) Modelfit tool result object
}
\description{
Run modelfit tool.
}
\examples{
\dontrun{
model <- load_example_model("pheno")
run_modelfit(model)
}

}
