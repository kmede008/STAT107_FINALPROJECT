#STAT107_FINALPROJECT

##OVERVIEW
This project analyzes the historical trends of global land-ocean temperatures anomalies from 1880 to 2025 using the data from NOAA'S Climate at a Glance: Global Time Series. The goal of the half-way evaluation is to show progress on data cleaning , preliminary visualization, and analysis.

##Project Structure
data: Contains raw CSV file 'GlobalTemperatures.csv' from NOAA.
output: Contains cleaned data saved as 'cleaned_global_temp.csv'and cleaned_global_temp.rds'.
r/00_requirements.R: Loads all R packages used in the analysis ('readr', dplyr', 'ggplot2', 'lubridate', etc.).
rmd/11_DataCleaning.Rmd: RMarkdown file that performs data cleaning, handles missing values, renames columns, saves cleaned data, and produces preliminary visualization.
FinalReport.Rmd: Draft of the project report including title, abstracts, introduction, data description, preliminary visualization, and analysis plan.
FinalReport.pdf: Knitted PDF of the report for submission.

##How to Reproduce the Results
1. Clone or download the repository.
2. Open the RStudio project.
3. Run 'r/00_requirements.R' to load the required packages.
4. Knit 'rmd/11_DataCleaning.Rmd' to clean the data and generate preliminary plots.
5. Knit 'FinalReport.Rmd' to produce the PDF report.
6. All cleaned data will be saved in the 'output' folder.

##Data Source 
NOAA Climate a a Glance: Global Time Series
[https://www.ncei.noaa.gov/access/monitoring/climate-at-a-glance/global/time-series/globe/land_ocean/tavg/12/0/1880-2025](https://www.ncei.noaa.gov/access/monitoring/climate-at-a-glance/global/time-series/globe/land_ocean/tavg/12/0/1880-2025) (https://www.ncei.noaa.gov/access/monitoring/climate-at-a-glance/global/time-series/globe/land_ocean/tavg/12/0/1880-2025%5D(https://www.ncei.noaa.gov/access/monitoring/climate-at-a-glance/global/time-series/globe/land_ocean/tavg/12/0/1880-2025))
