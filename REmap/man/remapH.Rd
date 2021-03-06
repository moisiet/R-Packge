% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/remapH.R
\name{remapH}
\alias{remapH}
\title{Create a heat map}
\usage{
remapH(data,
      maptype = 'china',
      theme = get_theme("Dark"),
      blurSize = 30,
      color = c('blue', 'cyan', 'lime', 'yellow', 'red'),
      minAlpha = 0.05,
      opacity = 1,
      ...)
}
\arguments{
\item{data}{a data frame including lontitude, latitude and density}

\item{maptype}{the type of the map. For exameple,'china',
'world' or other names of province in China.}

\item{theme}{a list object created by get_theme,control
the color of the map.}

\item{blurSize}{blur size of the data point, default is 30.}

\item{color}{a vector of strings like
['blue', 'cyan', 'lime', 'yellow', 'red'],
with which the color will transform evenly.}

\item{minAlpha}{If the unified value is less than minAlpha,
remapH will be set to minAlpha to ensure
small data value can also be visible on the chart.}

\item{opacity}{Opacity of the heatmap. Default is 1}

\item{...}{other paramters like title, subtitle,data for mark line}
}
\value{
An remap object of heat map
}
\description{
remapH uses a data frame create a heat remap object
which can be used by plot to see the map by browser
}
\details{
data should be a dataframe which including three columns,
the first column is lontitude, second column is latitude,
third column is the density.
}
\examples{
heatmap = sampleData()
## This is a function to create sample data as
## http://echarts.baidu.com/doc/example/heatmap_map.html

remapH(heatmap,minAlpha = 0.1,title = "Heat Map from REmap")
}
\author{
Chiffon <\url{http://lchiffon.github.io}>
}

