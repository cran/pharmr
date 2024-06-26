% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_wrapper.R
\name{remove_derivative}
\alias{remove_derivative}
\title{remove_derivative}
\usage{
remove_derivative(model, with_respect_to = NULL)
}
\arguments{
\item{model}{(Model) Pharmpy modeas.}

\item{with_respect_to}{(array(array(str) or str) or str (optional)) Parameter name(s) to use as independent variables. Default is NULL.}
}
\value{
(Pharmpy model.)
}
\description{
Remove a derivative currently being calculcate when running model. Currently, only
derivatives with respect to the prediction is supported. Default is to remove all
that are present,
First order derivates are specied either by single string or single-element tuple.
For instance with_respect_to = "ETA_1" or with_respect_to = ("ETA_1",)

Second order derivatives are specified by giving the two independent varibles in a tuple
of tuples. For instance with_respect_to ((ETA_1, EPS_1),)

Multiple derivatives can be specified within a tuple. For instance ((ETA_1, EPS_1), "ETA_1")

Currently, only ETAs and EPSILONs are supported
}
