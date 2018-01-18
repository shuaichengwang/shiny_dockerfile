FROM rocker/tidyverse:3.4.2

RUN apt-get update 

## needed lib for devtools r package, and Hmisc
RUN apt-get update && apt-get install -y curl
RUN apt-get update && apt-get install -y git
RUN apt-get update && apt-get install -y libssl-dev
RUN apt-get update && apt-get install -y libcurl4-openssl-dev

RUN echo "options(repos = c(CRAN = 'https://cran.rstudio.com/'), shiny.host = '0.0.0.0', shiny.port = 3838)" >> /usr/local/lib/R/etc/Rprofile.site

# install rJava R package
RUN apt-get install -y r-cran-rjava 

COPY . /usr/local/src/myscripts
WORKDIR /usr/local/src/myscripts

RUN Rscript install.R

EXPOSE 3838


