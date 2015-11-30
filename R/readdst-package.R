#' Convert Distance for Windows analyses to R code
#'
#' This package read data and model definitions from a Distance for Windows (henceforth DISTANCE) project (\code{.dst} and \code{.dat} files) and converts models to run in teh R pacakge \code{\link{mrds}}.
#'
#' @name readdst-package
#' @aliases readdst-package readdst
#' @docType package
NULL

#' Converted analysis objects
#'
#' Once \code{\link{convert_project}} has been run on a project, two types of object are created: first an object of class \code{converted_distance_analyses}, which is just a list of \code{converted_distance_analysis} objects.
#'
#' \code{converted_distance_analysis} contain all the information necessary to run a DISTANCE model in R. Each object has the following elements:
#'
#' \itemize{
#'   \item{\code{call}}{ string with the call to \code{\link{ddf}} to build and run the model}
#'   \item{\code{aic.select}}{ maximum number of terms to select by AIC if AIC term selection has been enabled (for key plus adjustment terms models only)}
#'   \item{\code{status}}{ what the status of this model was in DISTANCE (see "Status" below)}
#'   \item{\code{env}}{ an \code{environment} that contains any data needed to run the model (at the moment only one object, \code{obs.table} containing the observation table)}
#'   \item{\code{filter}}{ string used to subset the data to get the same filter as in DISTANCE}
#'   \item{\code{name}}{ the name for this analysis, as used in DISTANCE}
#'   \item{\code{ID}}{ the ID number for this analysis, as used in DISTANCE}
#' }
#'
#' @section Status:
#' The \code{status} code is taken from DISTANCE to indicate whether the analysis has been run yet and what the outcome was. Status codes are as follows:
#'
#' \itemize{
#'   \item{\code{0}}{ analyses has not been run in DISTANCE yet}
#'   \item{\code{1}}{ analysis ran without errors or warnings}
#'   \item{\code{2}}{ analysis ran with warnings}
#'   \item{\code{3}}{ analysis ran with errors}
#' }
#'
#' Note that an analysis that runs with error in DISTANCE may run fine in R and an analysis that runs fine in DISTANCE may not work in R. In the latter case, please consider submitting this a a bug to \url{github.com/distancedevelopment/distance-bugs}.
#' @name converted_distance_analyses
#' @aliases converted_distance_analyses converted_distance_analysis
NULL


