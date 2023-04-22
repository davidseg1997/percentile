
# percentile

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of percentile is to ...

## Installation

You can install the development version of percentile like so:

``` r
install.packages("percentile")
```

## Example

This is a personal package we use for projects like the Student Equity Need Index score and Race Counts. It contains some helpful functions that calculates the percentile depending if the best rate is the maximum or the minimum rate.

For example, let's suppose we are working with the Perception of Safety indicator from Crime & Justice Issue Area. This is an indicator where we want the highest number of people to report feeling safe in their neighborhood all or most of the time per 100 adults. so, the 'best' here would be minimum. 

Suppose we have these values: 

```{r}

data <- data.frame (county_id= c("06037", "06001", "06113", "06101", "06091"),
                    county_name = c("Los Angeles", "Alameda", "Yolo", "Sutter", "Sierra"),
                    asbest = c("max"),
                    index_of_disparity = c("35.42", "17.05", "22.04", "25.03", "47.04"),
                    total_rate = c("235.70", "440.03", "248.99", "182.93", "192.55"))

```

Now let's calculate the percentile of both the index of disparity and total rate. The ifelse uses the p_rank_max function() if the best is 'Max.' Otherwise, it uses the p_rank_min() function. 

```{r}
 data$disparity_pctile <- p_rank_max(data$index_of_disparity)
  data$performance_pctile <- ifelse(data$asbest == 'max', p_rank_max(data$total_rate), p_rank_min(data$total_rate))
  

```

```{r}
data
```

Now we have two separate columns that calculates the disparity percentile and performance percentile used in our Race-Counts website!



