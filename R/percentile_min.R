
#' Percentile Min: This function formula is used if the best rate for a given indicator is 'min.' For example, chronic absenteeism.
#'
#' @param Calculates a percentile value
#'
#' @return A Percentile value
#' @export
#'
#' @examples
#' Calculates the percentile rank max if the 'best' is 'min'.
#'#data <- data.frame (county_id= c("06037", "06001", "06113", "06101", "06091"),
#'county_name = c("Los Angeles", "Alameda", "Yolo", "Sutter", "Sierra"),
#'total_rate = c("235.70", "440.03", "248.99", "182.93", "192.55"))
#'data$performance_pctile <-  p_rank_min(data$total_rate)



p_rank_min <- function(a){
  r<-rank(-a)/sum(!is.na(-a)) * 100
  r[is.na(-a)]<-NA
  r
}



