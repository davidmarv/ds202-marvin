a <- c(1, 15, 3, 20, 5, 8, 9, 10, 1, 3)

a < 20

a^2 >100 | a^2 <10

a == 1 | a==3
a%%2 == 0





library(classdata)
head(fbiwide)
library(ggplot2)
library(dplyr)

dplyr::filter(fbi, year == 2014)
dplyr::filter(fbi, type == "larceny", state %in% c("Iowa", "Minnesota"))

nrow(fbi)

iowa_crimes <- filter(fbi, state_abbr=="IA")

dim(iowa_crimes)




iowa_crimes%>%
  filter(type == "homicide") %>%
  ggplot(aes(x =year, y =count))+geom_point()




ggplot(data = dplyr::filter(fbi, state == "Iowa"), aes(x = year, y=nrow(dplyr::filter(fbi, type == "burglary"))/population)) + geom_point()



ggplot(data = dplyr::filter(fbiwide, year == 2020), aes(x = state, y=burglary)) + geom_point()



ggplot(data = dplyr::filter(fbi, type == "homicide", year >= 2015 ), aes(x = year, y=population)) + geom_point()



library(ggplot2)
ggplot(data = fbiwide, aes(x = year, y=population)) + geom_point()

ggplot(data = fbiwide, aes(x = year, y=population)) + geom_point()+facet_wrap(~state_abbr)

ggplot(data = fbiwide, aes(x = year, y=motor_vehicle_theft)) + geom_point()+facet_wrap(~state_abbr)

ggplot(data = fbiwide, aes(x = year, y=motor_vehicle_theft/population)) + geom_point()+facet_wrap(~state_abbr)


ggplot(data = fbiwide, aes(x = year, y=motor_vehicle_theft/population*90000)) + geom_point()+facet_wrap(~state_abbr)+ xlim(c(2010, 2020))


ggplot(data = fbiwide, aes(x = year, y=property_crime/population)) + geom_point()+facet_wrap(~state_abbr)


ggplot(data = fbi, aes(x = type, y = log10(count))) +
  geom_boxplot() + 
  coord_flip()


ggplot(data = fbiwide, aes(x=state_abbr, y = (motor_vehicle_theft/population*90000)))+geom_boxplot()

ggplot(fbiwide, aes(x = motor_vehicle_theft)) + 
  geom_histogram(binwidth=5000) +
  ggtitle("binwidth = 5000")

ggplot(fbi, aes(x = type)) + 
  geom_bar(aes(weight= count)) +
  coord_flip()




summary(fbi)

filter(fbi, year == 2014)
filter(fbi, type == "larceny", state %in% c("Iowa", "Minnesota"))
