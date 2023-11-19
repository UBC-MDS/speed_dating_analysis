# Speed Dating Analysis

Authors: Michelle Hunn, Wenyu Nie, Rory White, Mona Zhu

## About

This repo is created for a group project for analyzing speed dating data set for MDS DSCI 522.

This research delves into the dynamics of self-perceived attractiveness in the context of dating. We explore whether individuals accurately gauge their own appeal compared to external judgments. Analyzing data from speed dating studies, the findings reveal a systematic tendency for individuals to overestimate their attractiveness. While a significant correlation exists between self-ratings and others' ratings, this research underscores the interplay between self-perception and external judgments in the realm of dating. The implications range from improved self-esteem for those perceiving themselves as more attractive to potential challenges in social interactions. Future research could investigate the influence of contemporary factors like social media on self-perception and exploring the multidimensional aspects of attractiveness.

The dataset used in this project were obtained from a series of speed dating studies led by Dr. Ray Fisman and Dr. Sheena Iyengar conducted between 2002 and 2004 at Columbia University (Fisman et al., 2006). Data were collected across 21 different sessions (known as “waves” in the dataset). Data was sourced from DataHub and can be found ![here](https://datahub.io/machine-learning/speed-dating).

## Report

A report of our analyses can be found here **INSERT LINK**

## Usage

When running this project for the first time, double click on the `.Rproj` file and run the following code:

```
renv::restore()
```

To run the code for the analysis, open `analysis/report.Rmd` through Rstudio and under "Run" on the top right hand side, select "Run All".

## Dependencies

* `R` (version 4.3.1 or higher)
* R packages listed in ![`renv.lock`](https://github.com/wenyunie/speed_dating_analysis/blob/main/renv.lock)

## License

The Speed Dating Analysis project and assocated materials are licensed under the MIT license. Please acknowledge and link to this webpage if you plan on using or re-mixing any part of this project

## References

Fisman, R., Iyengar, S. S., Kamenica, E., & Simonson, I. (2006). Gender Differences in Mate Selection: Evidence From a Speed Dating Experiment*. The Quarterly Journal of Economics, 121(2), 673–697. https://doi.org/10.1162/qjec.2006.121.2.673

Vanschoren, J., van Rijn, J. N., Bischl, B., & Torgo, L. (2014). OpenML: Networked science in machine learning. ACM SIGKDD Explorations Newsletter, 15(2), 49–60. https://doi.org/10.1145/2641190.2641198
