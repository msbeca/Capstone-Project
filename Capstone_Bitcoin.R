library(tidyverse)
library(dplyr)
library(readr)
library(tidyr)

Bitcoin_data <- read.csv("~/R/BTC-USD.csv")
str(Bitcoin_data)
BC_Data<- data.frame(Bitcoin_data$Date, Bitcoin_data$Adj.Close, Bitcoin_data$Volume)
names(BC_Data)<- c("Date", "Price", "Volume")
BC_Date<- as.Date(Bitcoin_data$Date)
View(BC_Data)

ggplot(BC_Data, aes(BC_Date, Price))+
  geom_line()

write.csv(BC_Data,"~/R/Bitcoin_clean.csv" )

