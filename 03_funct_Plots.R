# r/03_funct_Plots.R
# Functions to visualize global temperature

library(ggplot2)

#-------------------------
# Plot global temperature
# Input: data frame with Year and Temp columns
# Output: ggplot object
#-------------------------
plot_global_temp <- function(data){
  ggplot(data, aes(x = Year, y = Temp)) +
    geom_line(color = "steelblue") +
    labs(
      title = "Global Land-Ocean Temperature Anomaly (1880-2025)",
      x = "Year",
      y = "Temperature Anomaly (°C)"
    ) +
    theme_minimal()
}

#-------------------------
# Plot temperature with moving average
# Input: data frame with Temp and Temp_MA columns
# Output: ggplot object
#-------------------------
plot_temp_moving_average <- function(data){
  if(!("Temp_MA" %in% names(data))){
    stop("Data frame must contain a column named 'Temp_MA'")
  }
  
  ggplot(data, aes(x = Year)) +
    geom_line(aes(y = Temp), color = "grey") +
    geom_line(aes(y = Temp_MA), color = "red") +
    labs(
      title = "Global Temperature with Moving Average",
      x = "Year",
      y = "Temperature Anomaly (°C)"
    ) +
    theme_minimal()
}

