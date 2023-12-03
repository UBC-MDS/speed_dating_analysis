# Speed Dating Analysis

Authors: Michelle Hunn, Wenyu Nie, Rory White, Mona Zhu

## About

This repo is created for a group project for analyzing speed dating data set for MDS DSCI 522.

This research delves into the dynamics of self-perceived attractiveness in the context of dating. We explore whether individuals accurately gauge their own appeal compared to external judgments. Analyzing data from speed dating studies, the findings reveal a systematic tendency for individuals to overestimate their attractiveness. While a significant correlation exists between self-ratings and others' ratings, this research underscores the interplay between self-perception and external judgments in the realm of dating. The implications range from improved self-esteem for those perceiving themselves as more attractive to potential challenges in social interactions. Future research could investigate the influence of contemporary factors like social media on self-perception and exploring the multidimensional aspects of attractiveness.

The dataset used in this project were obtained from a series of speed dating studies led by Dr. Ray Fisman and Dr. Sheena Iyengar conducted between 2002 and 2004 at Columbia University (Fisman et al., 2006). Data were collected across 21 different sessions (known as “waves” in the dataset). Data was sourced from OpenML (Vanschoren et al., 2014) and can be found [here](http://www.stat.columbia.edu/~gelman/arm/examples/speed.dating/).

## Report

A report of our analyses can be found [here](https://wenyunie.github.io/speed_dating_analysis/output/analysis_report.html).


## Usage

#### Project Set up

1. [Clone](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository) this github repository.

2. Install the latest version of (Docker engine)[https://www.docker.com/get-started/] onto your computer and launch the program ().

#### Running Analyses on Your Local Environment

We highly recommend using a containerized solution to run the project so that the r package and system package depedencies are easier to be reproduced. If the user continues to run with their local environment, renv package will be used for depedency control, there are several dependencies to be installed manually.
1. Install R and Rstudio on the local computer.

2. Install R package 'renv' for the purpose of r package depedency control. In any R session:
   
```
install.packages('renv', repos = c(CRAN = 'https://cloud.r-project.org'))
```

3. When running this project for the first time, double click on the `speed_dating_analysis.Rproj` file and run the following code:

```
renv::restore()
```

You will be prompted to activate your renv environment. After that, retype `renv::restore()` again to download the necessary packages and dependencies for the project

4. Within Rstudio's Terminal tab, run the following code: 
```
bash analysis_script_and_output_bash_file.sh
```
If the user insists on using their own local terminal, then the user would need to ensure that [pandoc](https://pandoc.org/installing.html) is installed on their local machine.

**Note1:** The output analysis report (`analysis_report.html`) is located in the output folder

**Note2:** VERY IMPORTANT!!!!: If the user plans to use the containerized solution later, please remember to deactivate the .Rproj fist. Otherwise the activated .Rproj environment will be detected inside the container because of the .Rprofile file! This would overlay the self-contained container environment!!!


To separately run the code for the analysis, open `analysis/analysis-plot.Rmd` through Rstudio and under "Run" on the top right hand side, select "Run All". 

To separately render the final report, open `analysis/analysis_report.Rmd` through Rstudio and click "Knit". (please do not try to run code cells of this parent RMD file, it is meant provide structure only.)

Users who find it difficult to manually reproduce the environment for running the analysis and rendering the report can follow the guide in the `Running Analyses via Containers` section.


#### Running Analyses via Containers (Recommended)

A containerized version of the analysis has been published to Dockerhub as a [Docker Image](https://hub.docker.com/repository/docker/wenyunie/dsci522-rocker-speed-dating/general) for the convenience of replicating the computational environment. Researchers who are interested in reproducing the analysis result or building further analysis upon it can make use of this image and replicate the computational environment by following the below steps:

1. In the terminal, navigate to the project root folder and run `docker compose up -d`

2. In the web browser, go to `localhost:8787`

3. Log into Rstudio Server with username `rstudio` and password `key_to_dating`

4. To run the analysis and to create the corresponding output report, navigate to the `Terminal` tab (if you are unable to locate it, go to `Tools` bar at the top, navigate to `Terminal`, and select `New Terminal`) on Rstudio Server and run the following command to run the bash file, which will (1) run all of the analyses and save their outputs and (2) generate a `html` report summarizing the analyses:

```
bash analysis_script_and_output_bash_file.sh
```

**Note1:** The output analysis report (`analysis_report.html`) is located in the output folder

**Note2:** If you would like to run only a portion or subset of the analyses, please open `analysis_script_and_output_bash_file.sh` and selectively run the commands in the root project folder in your terminal (if you are running the file locally) or the Rstudio Server terminal (if you are using a container).

**Note3:** VERY IMPORTANT: the containerizaiton solution is self-contained for running analysis and rendering reports, please do not try to activate the `renv` environment when you are using the containerized solution, which can overlay the plain container environment and lead to unexpected errors.

**Note4:** Do not worry if you running to warning messages relating to 'grSoftVersion' in the containerized environment. Your report will be rendered properly.

#### Shutting Down the Container

To shut down the container, follow the following steps:

1. In your local machine's terminal, Hit ctrl + C twice to exit out of Rstudio server

2. Run the following command in your terminal window:

```
docker compose down
```

## License

The Speed Dating Analysis project is licensed under the Creative Common License [CC BY-NC-SA 4.0 Deed](https://creativecommons.org/licenses/by-nc-sa/4.0/). Please acknowledge and link to this webpage if you plan on using or adapting any part of this project. The software portion of this project is licensed under the MIT license. For a full description of the licenses used, please refer to (the license document in our project)[https://github.com/wenyunie/speed_dating_analysis/blob/main/LICENSE].

and assocated materials are licensed under the MIT license. Please acknowledge and link to this webpage if you plan on using or re-mixing any part of this project

## References

Bale, C., & Archer, J. (2013). Self-Perceived Attractiveness, Romantic Desirability and Self-Esteem: A Mating Sociometer Perspective. Evolutionary Psychology, 11(1), 147470491301100. <https://doi.org/10.1177/147470491301100107>

Faelens, L., Hoorelbeke, K., Cambier, R., Van Put, J., Van De Putte, E., De Raedt, R., & Koster, E. H. W. (2021, August 1). The relationship between Instagram use and indicators of mental health: A systematic review. <https://doi.org/10.1016/j.chbr.2021.100121>

Feingold, A. (1992). Good-looking people are not what we think. Psychological Bulletin, 111(2), 304--341. <https://doi.org/10.1037/0033-2909.111.2.304>

Fisman, R., Iyengar, S. S., Kamenica, E., & Simonson, I. (2006). Gender Differences in Mate Selection: Evidence From a Speed Dating Experiment\*. The Quarterly Journal of Economics, 121(2), 673--697. <https://doi.org/10.1162/qjec.2006.121.2.673>

Greitemeyer, T. (2020). Unattractive people are unaware of their (un)attractiveness. Scandinavian Journal of Psychology, 61(4), 471--483. <https://doi.org/10.1111/sjop.12631>

Logg, J. M., Haran, U., & Moore, D. A. (2018). Is overconfidence a motivated bias? Experimental evidence. Journal of Experimental Psychology: General, 147(10), 1445-1465. <https://doi.org/10.1037/xge0000500>

Müller, K. (2020). here: A Simpler Way to Find Your Files. <https://CRAN.R-project.org/package=here>

R Core Team. (2019). R: A Language and Environment for Statistical Computing. R Foundation for Statistical Computing. <https://www.R-project.org>

Swami, V., Furnham, A., Georgiades, C., & Pang, L. (2007). Evaluating self and partner physical attractiveness. *Body image*, *4*(1), 97-101. <https://doi.org/10.1016/j.bodyim.2006.10.003>

Swami, V., Stieger, S., Haubner, T., Voracek, M., & Furnham, A. (2009). Evaluating the physical attractiveness of oneself and one\'s romantic partner: Individual and relationship correlates of the love-is-blind bias. *Journal of Individual Differences*, *30*(1), 35-43. <https://doi.org/10.1027/1614-0001.30.1.35>

Vanschoren, J., van Rijn, J. N., Bischl, B., & Torgo, L. (2014). OpenML: Networked science in machine learning. ACM SIGKDD Explorations Newsletter, 15(2), 49--60. <https://doi.org/10.1145/2641190.2641198>

Walster, E., Aronson, V., Abrahams, D., & Rottman, L. (1966). Importance of physical attractiveness in dating behavior. *Journal of personality and social psychology*, *4*(5), 508. <https://doi.org/10.1037/h0021188>

Wickham, H., Averick, M., Bryan, J., Chang, W., McGowan, L. D., François, R., Grolemund, G., Hayes, A., Henry, L., Hester, J., Kuhn, M., Pedersen, T. L., Miller, E., Bache, S. M., Müller, K., Ooms, J., Robinson, D., Seidel, D. P., Spinu, V., ... Yutani, H. (2019). Welcome to the tidyverse. Journal of Open Source Software, 4(43), 1686. <https://doi.org/10.21105/joss.01686>

Xie, Y. (2023). knitr: A General-Purpose Package for Dynamic Report Generation in R. <https://yihui.org/knitr/>
