FROM shrektan/shiny

MAINTAINER Freeman Wang "freestatman@gmail.com"

# install rJava R package
RUN apt-get install -y r-cran-rjava 
RUN mkdir -m 777 -p /home/project/

COPY . /usr/local/src/myscripts
WORKDIR /usr/local/src/myscripts

RUN Rscript install.R

EXPOSE 3838


