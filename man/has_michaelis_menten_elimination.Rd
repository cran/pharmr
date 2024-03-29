% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_wrapper.R
\name{has_michaelis_menten_elimination}
\alias{has_michaelis_menten_elimination}
\title{has_michaelis_menten_elimination}
\usage{
has_michaelis_menten_elimination(model)
}
\arguments{
\item{model}{(Model) Pharmpy model}
}
\value{
(logical) TRUE if model has describes Michaelis-Menten elimination
}
\description{
Check if the model describes Michaelis-Menten elimination

This function relies on heuristics and will not be able to detect all
possible ways of coding the Michaelis-Menten elimination.
}
\examples{
\dontrun{
model <- load_example_model("pheno")
has_michaelis_menten_elimination(model)
model <- set_michaelis_menten_elimination(model)
has_michaelis_menten_elimination(model)
}

}
