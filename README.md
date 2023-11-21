# Speed Dating Analysis

Authors: Michelle Hunn, Wenyu Nie, Rory White, Mona Zhu

## About

This repo is created for a group project for analyzing speed dating data set for MDS DSCI 522.

This research delves into the dynamics of self-perceived attractiveness in the context of dating. We explore whether individuals accurately gauge their own appeal compared to external judgments. Analyzing data from speed dating studies, the findings reveal a systematic tendency for individuals to overestimate their attractiveness. While a significant correlation exists between self-ratings and others' ratings, this research underscores the interplay between self-perception and external judgments in the realm of dating. The implications range from improved self-esteem for those perceiving themselves as more attractive to potential challenges in social interactions. Future research could investigate the influence of contemporary factors like social media on self-perception and exploring the multidimensional aspects of attractiveness.

The dataset used in this project were obtained from a series of speed dating studies led by Dr. Ray Fisman and Dr. Sheena Iyengar conducted between 2002 and 2004 at Columbia University (Fisman et al., 2006). Data were collected across 21 different sessions (known as “waves” in the dataset). Data was sourced from OpenML (Vanschoren et al., 2014) and can be found [here](http://www.stat.columbia.edu/~gelman/arm/examples/speed.dating/).

## Report

A report of our analyses can be found [here](https://wenyunie.github.io/speed_dating_analysis/output/analysis_report.html).


## Usage

When running this project for the first time, double click on the `.Rproj` file and run the following code:

```
renv::restore()
```

To run the code for the analysis, open `analysis/report.Rmd` through Rstudio and under "Run" on the top right hand side, select "Run All".

## Dependencies

* `R` (version 4.3.1 or higher)
* R packages listed in [`renv.lock`](https://github.com/wenyunie/speed_dating_analysis/blob/main/renv.lock)

## License

The Speed Dating Analysis project and assocated materials are licensed under the MIT license. Please acknowledge and link to this webpage if you plan on using or re-mixing any part of this project

## References

Bale, C., & Archer, J. (2013). Self-Perceived Attractiveness, Romantic Desirability and Self-Esteem: A Mating Sociometer Perspective. Evolutionary Psychology, 11(1), 147470491301100. <https://doi.org/10.1177/147470491301100107>

Faelens, L., Hoorelbeke, K., Cambier, R., Van Put, J., Van De Putte, E., De Raedt, R., & Koster, E. H. W. (2021, August 1). The relationship between Instagram use and indicators of mental health: A systematic review. <https://doi.org/10.1016/j.chbr.2021.100121>

Feingold, A. (1992). Good-looking people are not what we think. Psychological Bulletin, 111(2), 304--341. <https://doi.org/10.1037/0033-2909.111.2.304>

Fisman, R., Iyengar, S. S., Kamenica, E., & Simonson, I. (2006). Gender Differences in Mate Selection: Evidence From a Speed Dating Experiment\*. The Quarterly Journal of Economics, 121(2), 673--697. <https://doi.org/10.1162/qjec.2006.121.2.673>

Greitemeyer, T. (2020). Unattractive people are unaware of their (un)attractiveness. Scandinavian Journal of Psychology, 61(4), 471--483. <https://doi.org/10.1111/sjop.12631>

Logg, J. M., Haran, U., & Moore, D. A. (2018). Is overconfidence a motivated bias? Experimental evidence. Journal of Experimental Psychology: General, 147(10), 1445--1465. <https://doi.org/10.1037/xge0000500>

Müller, K. (2020). here: A Simpler Way to Find Your Files. <https://CRAN.R-project.org/package=here>

R Core Team. (2019). R: A Language and Environment for Statistical Computing. R Foundation for Statistical Computing. <https://www.R-project.org>

Swami, V., Furnham, A., Georgiades, C., & Pang, L. (2007). Evaluating self and partner physical attractiveness. *Body image*, *4*(1), 97-101. <https://doi.org/10.1016/j.bodyim.2006.10.003>

Swami, V., Stieger, S., Haubner, T., Voracek, M., & Furnham, A. (2009). Evaluating the physical attractiveness of oneself and one\'s romantic partner: Individual and relationship correlates of the love-is-blind bias. *Journal of Individual Differences*, *30*(1), 35-43. <https://doi.org/10.1027/1614-0001.30.1.35>

Vanschoren, J., van Rijn, J. N., Bischl, B., & Torgo, L. (2014). OpenML: Networked science in machine learning. ACM SIGKDD Explorations Newsletter, 15(2), 49--60. <https://doi.org/10.1145/2641190.2641198>

Walster, E., Aronson, V., Abrahams, D., & Rottman, L. (1966). Importance of physical attractiveness in dating behavior. *Journal of personality and social psychology*, *4*(5), 508. <https://doi.org/10.1037/h0021188>

Wickham, H., Averick, M., Bryan, J., Chang, W., McGowan, L. D., François, R., Grolemund, G., Hayes, A., Henry, L., Hester, J., Kuhn, M., Pedersen, T. L., Miller, E., Bache, S. M., Müller, K., Ooms, J., Robinson, D., Seidel, D. P., Spinu, V., ... Yutani, H. (2019). Welcome to the tidyverse. Journal of Open Source Software, 4(43), 1686. <https://doi.org/10.21105/joss.01686>

Xie, Y. (2023). knitr: A General-Purpose Package for Dynamic Report Generation in R. <https://yihui.org/knitr/>
