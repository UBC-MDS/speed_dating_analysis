# Speed Dating Analysis

Authors: Michelle Hunn, Wenyu Nie, Rory White, Mona Zhu

## About

This repo is created for a group project for analyzing speed dating data set for MDS DSCI 522.

This research delves into the dynamics of self-perceived attractiveness in the context of dating. We explore whether individuals accurately gauge their own appeal compared to external judgments. Analyzing data from speed dating studies, the findings reveal a systematic tendency for individuals to overestimate their attractiveness. While a significant correlation exists between self-ratings and others' ratings, this research underscores the interplay between self-perception and external judgments in the realm of dating. The implications range from improved self-esteem for those perceiving themselves as more attractive to potential challenges in social interactions. Future research could investigate the influence of contemporary factors like social media on self-perception and exploring the multidimensional aspects of attractiveness.

The dataset used in this project were obtained from a series of speed dating studies led by Dr. Ray Fisman and Dr. Sheena Iyengar conducted between 2002 and 2004 at Columbia University (Fisman et al., 2006). Data were collected across 21 different sessions (known as “waves” in the dataset). Data was sourced from OpenML (Vanschoren et al., 2014) and can be found [here](http://www.stat.columbia.edu/~gelman/arm/examples/speed.dating/).

## Report

A report of our analyses can be found [here](https://ubc-mds.github.io/speed_dating_analysis/output/analysis_report.html).

## Usage

#### Project Set up

[Clone](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository) this github repository.

#### Running Analyses via Containers (Recommended)

A containerized version of the analysis has been published to Dockerhub as a [Docker Image](https://hub.docker.com/repository/docker/wenyunie/dsci522-rocker-speed-dating/general) for the convenience of replicating the computational environment. Researchers who are interested in reproducing the analysis result or building further analysis upon it can make use of this image and replicate the computational environment by following the below steps:

1. Install the latest version of [Docker engine](https://www.docker.com/get-started/) onto your computer and click on the Docker Desktop application to launch it.

2. In the terminal, navigate to the project root folder and run `docker compose up -d`

3. In the web browser, go to `localhost:8787`

4. Log into Rstudio Server with username `rstudio` and password `key_to_dating`

5. To run the analysis and to create the corresponding output report, navigate to the `Terminal` tab (if you are unable to locate it, go to `Tools` bar at the top, navigate to `Terminal`, and select `New Terminal`) on Rstudio Server and run `make all`, which will (1) run all of the analyses and save their outputs and (2) generate a `html` report summarizing the analyses. The output analysis report (`analysis_report.html`) is located in the output folder.

6. To remove all the files and folder created with `make all`, run `make clean` in the terminal.

**Note 1:** VERY IMPORTANT: the containerizaiton solution is self-contained for running analysis and rendering reports, please do not activate the `renv` environment when you are using the containerized solution, which can overlay the plain container environment and lead to unexpected errors.

**Note 2:** If you are using a computer with M2-chip (sometimes M1 too), you will need to emulate the x86/arm64 environment for the container to successfully run on your computer. This can be done by enabling Rosetta with your Docker Desktop:

![image](https://github.com/UBC-MDS/speed_dating_analysis/assets/143786716/2b569b13-1f6d-4b5c-94bb-2ac38969fd17)


#### Shutting Down the Container

To shut down the container, follow the following steps:

1. In your local machine's terminal, hit ctrl + C twice to exit out of Rstudio server

2. Run the following command in your terminal window:

```
docker compose down
```

## Dependencies

See the [renv.lock file](https://github.com/UBC-MDS/speed_dating_analysis/blob/main/renv.lock) for the dependencies.

## Developer Notes

**Note 1:** If you would like to run only a portion or subset of the analyses, please open `Makefile` and selectively run the script commands in the root project folder in your terminal (if you are running the file locally) or the Rstudio Server terminal (if you are using a container).

### Running the Tests

Tests can be performed by running the following code in the terminal within the root project folder: 

```
testthat::test_dir("tests/testthat")
```

## License

The Speed Dating Analysis project is licensed under the Creative Common License [CC BY-NC-SA 4.0 Deed](https://creativecommons.org/licenses/by-nc-sa/4.0/). Please acknowledge and link to this webpage if you plan on using or adapting any part of this project. The software portion of this project is licensed under the MIT license. For a full description of the licenses used, please refer to [the license document in our project](https://github.com/wenyunie/speed_dating_analysis/blob/main/LICENSE).

Please acknowledge and link to this webpage if you plan on using, re-mixing, or adapting any part of this project.

## References

Fisman, R., Iyengar, S. S., Kamenica, E., & Simonson, I. (2006). Gender Differences in Mate Selection: Evidence From a Speed Dating Experiment\*. The Quarterly Journal of Economics, 121(2), 673--697. <https://doi.org/10.1162/qjec.2006.121.2.673>

Vanschoren, J., van Rijn, J. N., Bischl, B., & Torgo, L. (2014). OpenML: Networked science in machine learning. ACM SIGKDD Explorations Newsletter, 15(2), 49--60. <https://doi.org/10.1145/2641190.2641198>