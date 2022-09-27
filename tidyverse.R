library(classdata)
library(dplyr)
fbi %>% filter(type=="burglary", year==2016) %>% head()

#showing pipe operator 
ggplot(data = filter(fbi, type=="homicide"), 
       aes(x = year, y = count)) + geom_point()

library(tidyverse)
fbi %>% 
  filter(type=="homicide") %>%
  ggplot(aes(x = year, y = count)) + 
  geom_point()


#using mutate 
fbi %>% mutate(rate = count/population*90000) %>% head()


#using arrange 
fbi %>% arrange(desc(year), type, desc(count)) %>% head()

fbi %>% arrange(count)%>%head()
 
#select example
fbi %>% arrange(desc(year), type, desc(count)) %>%
  select(type, count, state, year) %>% head()




#select three different ways of selecting variables 
fbiwide %>% filter(robbery > 1000, year==2016) %>% head()

fbiwide %>% mutate(robbery = "test")

fbi %>% arrange(desc(year), type, desc(count)) %>%
  select(type, count, population, year) %>% head()


fbiwide %>%
  select(homicide:arson)


fbiwide %>%
  select(7:16)

fbiwide %>%
  select(homicide, rape_legacy, rape_revised, robbery, aggravated_assault)

fbiwide %>%
  select(-(1:6))




#summarization 

fbi %>%
  mutate(
    rate= count/population*90000
  ) %>%
  summarize(
    mean_rate = mean(rate, na.rm=TRUE), sd_rate = sd(rate, na.rm=TRUE)
  )
