% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_e.R
\name{enumeratorSurveysDuration}
\alias{enumeratorSurveysDuration}
\title{Check the average interview duration by enumerator}
\usage{
enumeratorSurveysDuration(ds = NULL, dates = NULL, enumeratorID = NULL)
}
\arguments{
\item{ds}{dataset containing the survey (from kobo): data.frame}

\item{dates}{name of the fields where the information about the start and end date of the survey is stored: list of string (c('start_date','end_date'))}

\item{enumeratorID}{name of the field where the enumerator ID is stored: string}
}
\value{
dst      same dataset as the inputed one but with survey marked for deletion if errors are found and delete=TRUE (or NULL)

ret_log  list of the errors found (or NULL)

var      a list of value (or NULL)

graph    graphical representation of the results (or NULL)
}
\description{
This function display the average interview duration per enumerator.
}
\examples{
{
ds <- HighFrequencyChecks::sample_dataset
dates <- c("survey_start","end_survey")
enumeratorID <- "enumerator_id"

list[dst,ret_log,var,graph] <- enumeratorSurveysDuration(ds=ds,
                                                         dates=dates,
                                                         enumeratorID=enumeratorID)
head(ret_log,10)
print(graph)
}
}
\author{
Yannick Pascaud
}
