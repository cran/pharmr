% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_wrapper.R
\name{run_estmethod}
\alias{run_estmethod}
\title{run_estmethod}
\usage{
run_estmethod(
  algorithm,
  methods = NULL,
  solvers = NULL,
  results = NULL,
  model = NULL,
  ...
)
}
\arguments{
\item{algorithm}{(str) The algorithm to use (can be 'exhaustive', 'exhaustive_with_update' or 'exhaustive_only_eval')}

\item{methods}{(array(str) or str (optional)) List of estimation methods to test. Can be specified as 'all', a vector of methods, or
NULL (to not test any estimation method)}

\item{solvers}{(array(str) or str (optional)) List of solver to test. Can be specified as 'all', a vector of solvers, or NULL (to
not test any solver)}

\item{results}{(ModelfitResults (optional)) Results for model}

\item{model}{(Model (optional)) Pharmpy mode}

\item{...}{Arguments to pass to tool}
}
\value{
(EstMethodResults) Estmethod tool result object
}
\description{
Run estmethod tool.
}
\examples{
\dontrun{
model <- load_example_model("pheno")
results <- load_example_modelfit_results("pheno")
methods <- c('imp', 'saem')
run_estmethod('reduced', methods=methods, solvers='all', results=results, model=model)
}

}
