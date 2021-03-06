% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/markLineControl.R
\name{markLineControl}
\alias{markLineControl}
\title{Control the theme of mark line}
\usage{
markLineControl(symbol = c('none', 'arrow'),
      symbolSize = c(2,4),
      smooth = T,
      smoothness = 0.2,
      effect = T,
      lineWidth = 1,
      lineType = 'solid',
      color = "Random")
}
\arguments{
\item{symbol}{the symbol of the point
default:'pin', can be one of the 'circle','rectangle',
'triangle','diamond','emptyCircle','emptyRectangle',
'emptyTriangle','emptyDiamond','heart','droplet','pin','arrow'
'tar' or the filepath to a fingure file(e.g.
"'image://http://echarts.baidu.com/doc//asset/ico/favicon.png'")}

\item{symbolSize}{the size of the symbol, default is 10}

\item{smooth}{smoothed line, logical object, default is T,
while smooth is true, lineType can not be dashed.}

\item{smoothness}{Line smoothness. Only available when smooth is true}

\item{effect}{whether to show glow effect for markLine symbol}

\item{lineWidth}{width of the line}

\item{lineType}{type of the line can be 'solid', 'dotted'
or 'dashed'.}

\item{color}{Color of the line}
}
\value{
A list of line control object, which can be used for
}
\description{
markLineControl is a function for the themes of
 mark line, which can be set as a element in remapC and
 remapB
}
\examples{
mapdata = read.csv("demo/chinaIphone.csv")
out = remapC(data = mapdata,
             color = c("white","white"),
             theme=get_theme("none","white","white","white",'white'),
             markPointData = demoC[,2],
             markPointTheme = markPointControl(
               symbol = "image://demo/1.png",
               symbolSize = 50,
               effectType = 'bounce' ),
             geoData = geoData)
}

