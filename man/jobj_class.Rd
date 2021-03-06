% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spark_utils.R
\name{jobj_class}
\alias{jobj_class}
\title{Superclasses of object}
\usage{
jobj_class(jobj, simple_name = TRUE)
}
\arguments{
\item{jobj}{A \code{spark_jobj}}

\item{simple_name}{Whether to return simple names, defaults to TRUE}
}
\description{
Extract the classes that a Java object inherits from. This is the jobj equivalent of \code{class()}.
}
\keyword{internal}
