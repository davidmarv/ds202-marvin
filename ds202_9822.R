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


fbi$variable
fbi[, "variable"]
x[rows, columns]
x[1:5, 2:3]
x[c(1,5,6), c("State","Year")]
x$variable[rows]
