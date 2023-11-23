FROM rocker/tidyverse:4.3.2

RUN Rscript -e "remotes::install_version('here', '1.0.1')" &&\
    Rscript -e "remotes::install_version('markdown', '1.11')"