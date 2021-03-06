% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/anoms.R
\name{detect_anomalies_last}
\alias{detect_anomalies_last}
\title{Detect anomalies in the date specified}
\usage{
detect_anomalies_last(series, date = NULL, window.size = 60,
  model.alpha = 0.05, model.max_anoms = 0.1, threshold = 0)
}
\arguments{
\item{series}{the time series}

\item{date}{(optional) a Date object. If a date is not specified, the last day is chosen. Create with as.Date("2010/11/23")}

\item{window.size}{(optional) the time period to consider while computing the anomalies}

\item{model.alpha}{(optional) alpha param to pass to the algorithm}

\item{model.max_anoms}{(optional) max_anoms param to pass to the algorithm}

\item{threshold}{(optional) the minimum number of complaints for detecting anomalies}
}
\description{
Detect anomalies in the date specified
}

