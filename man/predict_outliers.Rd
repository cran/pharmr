% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_wrapper.R
\name{predict_outliers}
\alias{predict_outliers}
\title{predict_outliers}
\usage{
predict_outliers(model, results, cutoff = 3)
}
\arguments{
\item{model}{(Model) Pharmpy model}

\item{results}{(ModelfitResults) ModelfitResults for the model}

\item{cutoff}{(numeric) Cutoff threshold for a residual signaling an outlier}
}
\value{
(data.frame) Dataframe over the individuals with a \code{residual} column containing the raw predicted residuals and a \code{outlier} column with a boolean to tell whether the individual is an outlier or not.
}
\description{
Predict outliers for a model using a machine learning model.

See the :ref:\verb{simeval <Individual OFV summary>} documentation for a definition of the \code{residual}

Please refer to www.page-meeting.org/?abstract=10029 for more information on training and estimated
precision and accuracy.
}
\examples{
\dontrun{
model <- load_example_model("pheno")
results <- load_example_modelfit_results("pheno")
predict_outliers(model, results)
}
}
\seealso{
predict_influential_individuals

predict_influential_outliers
}
