
# percentile

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of percentile is to ...

## Installation

You can install the development version of percentile like so:

``` r
remotes::install_github("davidseg1997/percentile")
library(percentile) # percentile package created by RDA

```

## Example

This is a personal package we use for projects like the Student Equity Need Index score and Race Counts. It contains some helpful functions that calculates the percentile depending if the best rate is the maximum or the minimum rate.

For example, let's suppose we are working with the Perception of Safety indicator from Crime & Justice Issue Area. This is an indicator where we want the highest number of people to report feeling safe in their neighborhood all or most of the time per 100 adults. so, the 'best' here would be minimum. 

Suppose we have these values: 

```{r}

data <- data.frame (county_id= c("06037", "06001", "06113", "06101", "06091"),
                    county_name = c("Los Angeles", "Alameda", "Yolo", "Sutter", "Sierra"),
                    total_rate = c("235.70", "440.03", "248.99", "182.93", "192.55"))

```

```{r}
data
```

Now let's calculate the percentile of the total rate. It is as simple as putting the total_rate inside the parenthesis.

```{r}
data$performance_pctile <-  p_rank_max(data$total_rate)
  

```

```{r}
data
```

Now we have two separate columns that calculates the disparity percentile and performance percentile used in our Race-Counts website!



