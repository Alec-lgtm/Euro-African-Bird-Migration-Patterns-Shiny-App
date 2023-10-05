# Euro-African Bird Migration Patterns Shiny App

## Description

The Euro-African Bird Migration Patterns Shiny App is an interactive web application developed as a project for the class **COMP 112 (Introduction to Data Science)**. This app provides insights into the migration patterns and trends of European and African birds, with a specific focus on comparing the migration behavior of the European robin and the White stork. It offers valuable information on migration time, altitude, velocity, and more.

## Authors

- Alec Chen
- Vanessa Leon

## Table of Contents

1. [Getting Started](#getting-started)
2. [Data Cleaning](#data-cleaning)
3. [Data Visualization](#data-visualization)
4. [Acknowledgements](#acknowledgements)

## Getting Started

To run the app, follow these steps:

1. **Install Required Packages in R**

   Run the following commands in R to install the necessary packages:

   ```R
   library(tidyverse)
   library(dplyr)
   library(ggmap)
   library(berryFunctions)
   library(ggthemes)
   library(RColorBrewer)
   library(gganimate)
   library(lubridate)
   library(transformr)
   library(metR)
   library(gganimate)
2. **Run the App**

Execute the global.R file to start the Shiny app.

# Data Cleaning
The data cleaning process involves several steps to prepare the data for visualization. Here's an overview of the data cleaning process:

- **Data Sources**: The project utilizes two datasets - one from Kaggle ([bird_tracking](https://www.kaggle.com/datasets/saikrishna20/bird-tracking)) and another from the [European Network for the Radar Surveillance of Animal Movement](https://github.com/enram/case-study).

- **Data Import**: The R script imports the data using the read.csv() function.

- **Data Wrangling**: Data wrangling includes various operations such as filtering based on specific conditions and transformations using the dplyr package.

Data Visualization
The app employs various data visualization techniques to present bird migration patterns effectively:

- **Creating Maps**: Utilizing get_stamenmap(), the app generates maps of Europe and Africa, providing geographic context for bird migrations.

- **Animated Visualizations**: The app uses gganimate to create animated visualizations of bird migrations, allowing users to observe migration trends dynamically.

Acknowledgements
- **Data Source**: ENRAM (European Network for the Radar Surveillance of Animal Movement) and Sri Sai Krishna N
- **Advisor**: Brianna Heggeseth

Feel free to reach out to the authors for more information or inquiries about the project.

Note: Ensure that you have the required datasets and permissions before using this application.

Questions to ask Alicia:
- Installation Instructions - do I need to make it more clear for people who don't have R?

For me
- Add comments to explain the R code. And maybe figure out how to put gifs in the readme?
