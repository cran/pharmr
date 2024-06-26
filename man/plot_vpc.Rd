% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_wrapper.R
\name{plot_vpc}
\alias{plot_vpc}
\title{plot_vpc}
\usage{
plot_vpc(
  model,
  simulations,
  binning = "equal_number",
  nbins = 8,
  qi = 0.95,
  ci = 0.95,
  stratify_on = NULL
)
}
\arguments{
\item{model}{(Model) Pharmpy model}

\item{simulations}{(data.frame or str) DataFrame containing the simulation data or path to dataset.
The dataset has to have one (index) column named "SIM" containing
the simulation number, one (index) column named "index" containing the data indices and one dv column.
See below for more information.}

\item{binning}{(str) Binning method. Can be "equal_number" or "equal_width". The default is "equal_number".}

\item{nbins}{(numeric) Number of bins. Default is 8.}

\item{qi}{(numeric) Upper quantile. Default is 0.95.}

\item{ci}{(numeric) Confidence interval. Default is 0.95.}

\item{stratify_on}{(str (optional)) Parameter to use for stratification. Optional.}
}
\value{
(alt.Chart) Plot The simulation data should have the following format: +-----+-------+--------+ | SIM | index | DV     | +=====+=======+========+ | 1   | 0     | 0.000  | +-----+-------+--------+ | 1   | 1     | 34.080 | +-----+-------+--------+ | 1   | 2     | 28.858 | +-----+-------+--------+ | 1   | 3     | 0.000  | +-----+-------+--------+ | 1   | 4     | 12.157 | +-----+-------+--------+ | 2   | 0     | 23.834 | +-----+-------+--------+ | 2   | 1     | 0.000  | +-----+-------+--------+ | ... | ...   | ...    | +-----+-------+--------+ | 20  | 2     | 0.000  | +-----+-------+--------+ | 20  | 3     | 31.342 | +-----+-------+--------+ | 20  | 4     | 29.983 | +-----+-------+--------+
}
\description{
Creates a VPC plot for a model
}
\examples{
\dontrun{
model <- load_example_model("pheno")
sim_model <- set_simulation(model, n=100)
sim_data <- run_simulation(sim_model)
plot_vpc(model, sim_data)
}

}
