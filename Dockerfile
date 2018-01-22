#FROM rocker/shiny
FROM shrektan/shiny

MAINTAINER Freeman Wang "freestatman@gmail.com"

#RUN echo "options(repos = c(CRAN = 'https://cran.rstudio.com/'), shiny.host = '0.0.0.0', shiny.port = 3838)" >> /usr/local/lib/R/etc/Rprofile.site
#RUN echo "options(repos = c(CRAN = 'https://cran.rstudio.com/'), shiny.host = '0.0.0.0', shiny.port = 3838)" >> /usr/lib/R/etc/Rprofile.site

#RUN apt-get update 
#
### needed lib for devtools r package, and Hmisc
#RUN apt-get update && apt-get install -y curl
#RUN apt-get update && apt-get install -y git
#RUN apt-get update && apt-get install -y libssl-dev
#RUN apt-get update && apt-get install -y libcurl4-openssl-dev

# install rJava R package
RUN apt-get install -y r-cran-rjava 

RUN mkdir -m 777 -p /home/project/

COPY . /usr/local/src/myscripts
WORKDIR /usr/local/src/myscripts

RUN Rscript install.R

EXPOSE 3838


