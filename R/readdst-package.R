#' Convert Distance for Windows analyses to R code
#'
#' This package read data and model definitions from a Distance for Windows project (\code{.dst} and \code{.dat} files) and converts models to run in the R package \code{\link{mrds}}.
#'
#' Usually, a workflow will look something like that below. See also the vignette shipped with the package for example output.
#'
#' @name readdst-package
#' @aliases readdst-package readdst
#' @docType package
#' @examples
#' \dontrun{
#' library(readdst)
#' # load the golftees sample project and convert it
#' project <- system.file("Golftees-example", package="readdst")
#' project <- paste0(project,"/Golftees")
#' converted <- convert_project(project)
#'
#' # run the first analysis in the project and look at model summary
#' analysis_1 <- run_analysis(converted[[1]], debug=TRUE)
#' summary(analysis_1)
#' }
NULL

#' Converted analysis objects
#'
#' Once \code{\link{convert_project}} has been run on a project, two types of object are created: first an object of class \code{converted_distance_analyses}, which is just a list of \code{converted_distance_analysis} objects.
#'
#' \code{converted_distance_analysis} contain all the information necessary to run a Distance for Windows model in R. Each object has the following elements:
#'
#' \itemize{
#'   \item{\code{call}}{ string with the call to \code{\link{ddf}} to build and run the model}
#'   \item{\code{aic.select}}{ maximum number of terms to select by AIC if AIC term selection has been enabled (for key plus adjustment terms models only)}
#'   \item{\code{status}}{ what the status of this model was in Distance for Windows (see "Status" below)}
#'   \item{\code{env}}{ an \code{environment} that contains any data needed to run the model (at the moment only one object, \code{obs.table} containing the observation table)}
#'   \item{\code{filter}}{ string used to subset the data to get the same filter as in Distance for Windows}
#'   \item{\code{name}}{ the name for this analysis, as used in Distance for Windows}
#'   \item{\code{ID}}{ the ID number for this analysis, as used in Distance for Windows}
#' }
#'
#' @section Status:
#' The \code{status} code is taken from Distance for Windows to indicate whether the analysis has been run yet and what the outcome was. Status codes are as follows:
#'
#' \itemize{
#'   \item{\code{0}}{ analyses has not been run in Distance for Windows yet}
#'   \item{\code{1}}{ analysis ran without errors or warnings}
#'   \item{\code{2}}{ analysis ran with warnings}
#'   \item{\code{3}}{ analysis ran with errors}
#' }
#'
#' Note that an analysis that runs with error in Distance for Windows may run fine in R and an analysis that runs fine in Distance for Windows may not work in R. In the latter case, please consider submitting this a a bug to \url{github.com/distancedevelopment/distance-bugs}.
#' @name converted_distance_analyses
#' @aliases converted_distance_analyses converted_distance_analysis
NULL



