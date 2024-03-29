% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_wrapper.R
\name{calculate_aic}
\alias{calculate_aic}
\title{calculate_aic}
\usage{
calculate_aic(model, likelihood)
}
\arguments{
\item{model}{(Model) Pharmpy model object}

\item{likelihood}{(numeric) -2LL}
}
\value{
(numeric) AIC of model fit
}
\description{
Calculate AIC

AIC = -2LL + 2*n_estimated_parameters
}
