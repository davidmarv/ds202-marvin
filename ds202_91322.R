library(classdata)

fbiwide

library(ggplot2)
ggplot(data = fbiwide, aes(x= population, y = arson)) + geom_point()

ggplot(data = fbiwide, aes(x = burglary, y = homicide)) +
  geom_point()

ggplot(data = fbiwide, aes(x = log(burglary), y = log(homicide))) +
  geom_point()

ggplot(data = fbiwide, aes(x = log(burglary), 
                           y = log(motor_vehicle_theft))) +
  geom_point()


ggplot(aes(x = log(burglary), y = log(motor_vehicle_theft),
           colour=state), data=fbiwide, legend.position = "none") + geom_point()

ggplot(aes(x = log(burglary), y = log(motor_vehicle_theft),
           colour=year), data=fbiwide) + geom_point()

ggplot(aes(x = log(burglary), y = log(motor_vehicle_theft),
           size=population), data=fbiwide) + geom_point()



