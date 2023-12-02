FROM rocker/tidyverse:4.3.2

RUN Rscript -e "remotes::install_version('here', '1.0.1', upgrade='never')" &&\
    Rscript -e "remotes::install_version('Hmisc', '5.1.1', upgrade='never')" &&\
    Rscript -e "remotes::install_version('markdown', '1.11', upgrade='never')" &&\
    Rscript -e "remotes::install_version('docopt', '0.7.1', upgrade='never')" &&\
    Rscript -e "remotes::install_version('bookdown', '0.36', upgrade='never')" &&\
    Rscript -e "remotes::install_version('renv', '1.0.1', upgrade='never')" 

# WORKDIR /project

# RUN mkdir -p renv
# COPY renv.lock renv.lock
# COPY .Rprofile .Rprofile
# COPY renv/activate.R renv/activate.R
# COPY renv/settings.dcf renv/settings.dcf

# # change default location of cache to project folder
# RUN mkdir renv/.cache
# ENV RENV_PATHS_CACHE renv/.cache

# # restore 
# RUN Rscript -e "renv::restore()"
