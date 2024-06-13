#001-libraries, functions, and data import

library(tidyverse)
library(here)
library(ggplot2)
library(RColorBrewer)
library(viridis)

#import data
UmatakaDiameter<- read_csv("analysis/data/raw_data/UmatakaDiameter.csv", na = c("#VALUE!", "#N/A"))
UmatakaLength<- read_csv("analysis/data/raw_data/UmatakaLength.csv", na = c("#VALUE!", "#N/A"))
