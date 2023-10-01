library(shiny)
library(tidyverse)
library(lubridate)
library(shinythemes)
library(ggplot2)

birds <- read.csv("bird_tracking_copy.csv")

birds <- birds %>%
  mutate(true_ymd = floor_date(as.Date(date_time))) 