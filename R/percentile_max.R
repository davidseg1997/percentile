
#' Percentile Max:  This function formulas is used if the best rate for a given indicator is 'max'. For example, high school graduation.
#'
#' @param Calculates a percentile value
#'
#' @return A Percentile value
#' @export
#'
#' @examples
#' Calculates the percentile rank max if the 'best' is 'max'. Otherwise, it calculates the percentile of the minimum.
#' tot_table <- select(x, county_id, asbest, index_of_disparity, total_rate) #%>%
#'tot_table$disparity_pctile <- p_rank_max(tot_table$index_of_disparity)
#'tot_table$performance_pctile <- ifelse(tot_table$asbest == 'max', p_rank_max(tot_table$total_rate), p_rank_min(tot_table$total_rate))

p_rank_max <- function(a){
  r<-rank(a)/sum(!is.na(a)) * 100
  r[is.na(a)]<-NA
  r
}
