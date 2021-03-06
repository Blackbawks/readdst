% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_formula.R
\name{make_formula}
\alias{make_formula}
\title{Build a dsmodel or mrmodel formula}
\usage{
make_formula(md_formula, md_factors)
}
\arguments{
\item{md_formula}{"Formula" data from a model definition}

\item{md_factors}{"Factors" data from a model definition}
}
\value{
a character string specifying a formula, starting with "\code{formula=~}"
}
\description{
Build a formula, ensuring that the correct terms are factors
}
\author{
David L Miller
}
