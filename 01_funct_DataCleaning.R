#01_funct_DataCleaning.R
library(readr)
library(dplyr)
library(tidyr)
library(here)

#Function to clean global temperature data
clean_global_temp<-function(file_path){
  temp_data<- read_csv(file_path, skip = 3, show_col_types = FALSE)
  
  clean_data<- temp_data %>%
    rename(
      Year = Date,
      Temp = Anomaly
      
    ) %>%
    mutate(
      Year = as.numeric(Year),
      Temp = as.numeric(Temp)
    )%>%
    drop_na()
  
  return(clean_data)
}

#Function to save cleaned data
save_cleaned_data<- function(df, output_folder){
  if(!dir.exists(output_folder)) dir.create(output_folder)
  
  write_csv(df, here(output_folder, "cleaned_global_temp.csv"))
  saveRDS(df, here(output_folder, "cleaned_global_temp.rds"))
}
