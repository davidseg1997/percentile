
#' Percentile Max:  This function formulas is used if the best rate for a given indicator is 'max'. For example, high school graduation.
#'
#' @param Calculates a percentile value
#'
#' @return A Percentile value
#' @export
#'
#' @examples
#' Calculates the percentile rank max if the 'best' is 'max'.
#'#data <- data.frame (county_id= c("06037", "06001", "06113", "06101", "06091"),
#'county_name = c("Los Angeles", "Alameda", "Yolo", "Sutter", "Sierra"),
#'total_rate = c("235.70", "440.03", "248.99", "182.93", "192.55"))
#'  data$performance_pctile <-  p_rank_max(data$total_rate)



p_rank_max <- function(a){
  r<-rank(a)/sum(!is.na(a)) * 100
  r[is.na(a)]<-NA
  r
}
