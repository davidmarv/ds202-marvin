x <- c(4, 1, 3, 9)
y <- c(1, 2, 3, 5)

d = sqrt(sum((x-y)^2))
d

NA

sqrt(NA + 1)


#install.packages("remotes")
#only install package once remotes::install_github("heike/classdata")
library(classdata) #activate into work session every time 

library(help = classdata)

fbi
#console   data(fbi)

head(fbi)

summary(fbi)

str(fbi)

dim(fbi)

fbi$population
summary(fbi$population)



x = head(fbi, 10)$count
mean(fbi$count, na.rm = TRUE)
sd(fbi$count, na.rm = TRUE)
x[1]



#end of class
