
# percentile

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of percentile is to calculate percentile for given indicators in order to rank the unit of analysis (counties, schools). For example, which county has the highest perception of safety or which school has the highest SENI Score, therefore considered a higher need school.

## Installation

You can install the development version of percentile like so:

``` r
remotes::install_github("davidseg1997/percentile")
library(percentile) # percentile package created by RDA

```

## Example

This is a personal package we use for projects like the Student Equity Need Index score and Race Counts. It contains some helpful functions that calculates the percentile depending if the best rate is the maximum or the minimum rate.

For example, let's suppose we are working with the Perception of Safety indicator from Crime & Justice Issue Area. This is an indicator where we want the highest number of people to report feeling safe in their neighborhood all or most of the time per 100 adults. So, the 'best' here would be the maximum, so we would use the p_rank_max function(). Otherwise, we would use the p_rank_min() for other indicators like Asthma.

Suppose we have these values: 

```{r}

data <- data.frame (county_id= c("06037", "06001", "06113", "06101", "06091"),
                    county_name = c("Los Angeles", "Alameda", "Yolo", "Sutter", "Sierra"),
                    total_rate = c("35.70", "40.03", "48.99", "82.93", "92.55"))

```

county_id     | county_name   | total_rate    |
------------- | ------------- | ------------- |
06037         | Los Angeles   | 35.70         |
06001         | Alameda       | 40.03         |
06113         | Yolo          | 48.99         |
06101         | Sutter        | 82.93         |
06091         | Sierra        | 92.55         |


Now let's calculate the percentile of the total rate. It is as simple as putting the total_rate inside the parenthesis.

```{r}
data$performance_pctile <-  p_rank_max(data$total_rate)
  

```

county_id     | county_name   | total_rate    | performance_pctile |
------------- | ------------- | ------------- | -------------      |
06037         | Los Angeles   | 35.70        | 60                  |
06001         | Alameda       | 40.03        | 100                 |
06113         | Yolo          | 48.99        | 80                  |
06101         | Sutter        | 82.93        | 20                  |
06091         | Sierra        | 92.55        | 40                  |


Now we have a column for the performance percentile.



