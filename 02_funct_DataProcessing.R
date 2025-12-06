#r/02_funct_DataProcessing.R
#Function for processing cleaned data

library(dplyr)
library(zoo) #for moving averages

#-----------------------
#Add moving averages
#Input: cleaned data, frame, window size n
#Output: data frame with Temp_MA column
#-----------------------

add_moving_average <- function(data, n = 5) {
  data %>%
    arrange(Year) %>%
    mutate(Temp_MA = zoo::rollmean(Temp, n, fill = NA, align = "right"))
}

#----------------------
#Categorize temperatures
#Input: data frame
#Output: data frame with Temp_Category column
#----------------------
categorize_temp <- function(data){
  data%>%
    mutate(Temp_Category = case_when(
      Temp < 0 ~ "Low",
      Temp >= 0 & Temp <0.8 ~ "Medium",
      Temp>= 0.8 ~ "High"
    ))
}
