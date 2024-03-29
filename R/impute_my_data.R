#' imputeMyData
#' @title Impute My Data
#' @description Impute for missing values in given column in a given data by given method.
#' @param df data frame to impute
#' @param col a column name of data frame to impute
#' @param FUN a function to be used for imputing values one of(mean, median, sum, min, max)
#' @importFrom stats median
#' @examples
#' x <- head(iris)
#' x$Sepal.Length[1] <- NA
#' imputeMyData(x, "Sepal.Length", "mean")
imputeMyData <- function(df, col, FUN) {
  missing_cells <- (is.na(df[,col]) | is.null(df[,col]) | df[,col] == "NULL" | df[,col] == "" )
  df_original <- df
  
  if(getType(df[,col]) == 'numeric') {

    for(i in 1:length(df[,col])) {
      #print(paste("present",df[col][i,]))
      if(FUN == "mean") {
        df[col][i,] <- ifelse(missing_cells[i] == TRUE,
                              round(mean(df[,col], na.rm = TRUE), digits = 2), df[col][i,])
      }

      if(FUN == "median") {
        df[col][i,] <- ifelse(missing_cells[i] == TRUE,
                              round(median(df[,col], na.rm = TRUE), digits = 2), df[col][i,])
      }

      if(FUN == "max") {
        df[col][i,] <- ifelse(missing_cells[i] == TRUE,
                              round(max(df[,col], na.rm = TRUE), digits = 2), df[col][i,])
      }

      if(FUN == "min") {
        df[col][i,] <- ifelse(missing_cells[i] == TRUE,
                              round(min(df[,col], na.rm = TRUE), digits = 2), df[col][i,])
      }
      #print(paste("Imputed",df[col][i,]))
    }
  } else if(getType(df[,col]) == 'character') {
    for(i in 1:length(df[,col])) {
      if(missing_cells[i]) {
        df[col][i,] <- as.character(getMostRepeatedValue(df[,col]))
      } else {
        df[col][i,] <- df[col][i,]
      }
    }
  }
  return(df)
}
