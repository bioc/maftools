% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oncoPathway.R
\name{pathways}
\alias{pathways}
\title{Enrichment of known oncogenic or custom pathways}
\usage{
pathways(
  maf,
  pathdb = "sigpw",
  pathways = NULL,
  fontSize = 1,
  panelWidths = c(2, 4, 4),
  plotType = NA,
  col = "#f39c12"
)
}
\arguments{
\item{maf}{an \code{\link{MAF}} object generated by \code{\link{read.maf}}}

\item{pathdb}{Either `sigpw` or `smgbp`,  `sigpw` uses known oncogenic signalling pathways (Sanchez/Vega et al) whereas `smgbp` uses pan cancer significantly mutated genes classified according to biological process (Bailey et al). Default \code{smgbp}}

\item{pathways}{Can be a two column data.frame/tsv-file with pathway-name and genes involved in them. Default `NULL`. This argument is mutually exclusive with \code{pathdb}}

\item{fontSize}{Default 1}

\item{panelWidths}{Default c(2, 4, 4)}

\item{plotType}{Can be 'treemap' or 'bar'. Set NA to suppress plotting. Default NA}

\item{col}{Default #f39c12}
}
\value{
fraction of altered pathway. attr genes contain pathway contents
}
\description{
Checks for enrichment of known or custom pathways
}
\details{
Oncogenic signalling and SMG pathways are derived from TCGA cohorts. See references for details.
}
\examples{
laml.maf <- system.file("extdata", "tcga_laml.maf.gz", package = "maftools")
laml <- read.maf(maf = laml.maf)
pathways(maf = laml)
}
\references{
Sanchez-Vega F, Mina M, Armenia J, Chatila WK, Luna A, La KC, Dimitriadoy S, Liu DL, Kantheti HS, Saghafinia S et al. 2018. Oncogenic Signaling Pathways in The Cancer Genome Atlas. Cell 173: 321-337 e310
Bailey, Matthew H et al. “Comprehensive Characterization of Cancer Driver Genes and Mutations.” Cell vol. 173,2 (2018): 371-385.e18.
}
\seealso{
\code{\link{plotPathways}}
}
