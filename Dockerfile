FROM rocker/tidyverse:latest

MAINTAINER Frédéric M. Vanwindekens (f.vanwindekens@cra.wallonie.be)

RUN apt-get update -q \
    && apt-get install -y \
      libgeos-dev \
      libudunits2-dev \			
      gdal-bin \
      libgdal-dev \
      libproj-dev \
      libmagick++-dev \
    && apt-get clean \ 
    && rm -rf /var/lib/apt/lists/ \ 
    && rm -rf /tmp/downloaded_packages/ /tmp/*.rds \
    && install2.r --error \
      knitr \
      maptools \
      rmarkdown \
      maps \
      units \
      sf \
      raster \
      scales \
      mapview \
      revealjs \
      tmap \
      shiny \
      ggmap \
      ggimage \      
      plotly \
      DT \
      pander \
   && rm -rf /tmp/downloaded_packages/ /tmp/*.rds \
   && rm -rf /var/lib/apt/lists/* \
   && rm -rf /tmp/downloaded_packages



 



