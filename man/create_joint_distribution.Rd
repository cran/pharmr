% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_wrapper.R
\name{create_joint_distribution}
\alias{create_joint_distribution}
\title{create_joint_distribution}
\usage{
create_joint_distribution(model, rvs = NULL, individual_estimates = NULL)
}
\arguments{
\item{model}{(Model) Pharmpy model}

\item{rvs}{(array(str) (optional)) Sequence of etas or names of etas to combine. If NULL, all etas that are IIVs and
non-fixed will be used (full block). NULL is default.}

\item{individual_estimates}{(data.frame (optional)) Optional individual estimates to use for calculation of initial estimates}
}
\value{
(Model) Pharmpy model object
}
\description{
Combines some or all etas into a joint distribution.

The etas must be IIVs and cannot
be fixed. Initial estimates for covariance between the etas is dependent on whether
the model has results from a previous run. In that case, the correlation will
be calculated from individual estimates, otherwise correlation will be set to 10\%.
}
\examples{
\dontrun{
model <- load_example_model("pheno")
model$random_variables$etas
model <- create_joint_distribution(model, c('ETA_CL', 'ETA_VC'))
model$random_variables$etas
}
}
\seealso{
split_joint_distribution : split etas into separate distributions
}
