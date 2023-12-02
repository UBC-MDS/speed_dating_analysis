FROM rocker/tidyverse:4.3.2

#Rscript -e "remotes::install_version('here', '1.0.1', upgrade='never')" &&\
#    Rscript -e "remotes::install_version('Hmisc', '5.1.1', upgrade='never')" &&\
#    Rscript -e "remotes::install_version('markdown', '1.11', upgrade='never')" &&\
#    Rscript -e "remotes::install_version('docopt', '0.7.1', upgrade='never')" &&\
#    Rscript -e "remotes::install_version('bookdown', '0.36', upgrade='never')" &&\
RUN Rscript -e "remotes::install_version('renv', '1.0.2', upgrade='never')" 

WORKDIR /project
COPY renv.lock renv.lock

RUN R -e "renv::restore()"
