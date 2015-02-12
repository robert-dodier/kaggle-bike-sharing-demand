train<-read.table("train.csv", row.names=NULL, sep=",", header=T)
summary (train)

plot (train$weather, train$count)
plot (train$temp, train$count)
plot (train$atemp, train$count)
plot (train$humidity, train$count)
plot (train$windspeed, train$count)
plot (train$season, train$count)
plot (train$holiday, train$count)
plot (train$workingday, train$count)

train.1 <- as.vector (train[, 1])
train.timestamp <- strptime (train.1, "%Y-%m-%d %H:%M:%S")
plot (train.timestamp, train$count, type='l')

plot (c(0, 25), c(0, 1000), type='n')
for (i in 181:250) { lines (1:24, train$count[(i*24):((i+1)*24 - 1)]) }

plot (c(0, 25), c(0, 1000), type='n')
for (i in 181:250) { lines (1:24, train$registered[(i*24):((i+1)*24 - 1)]) }

plot (c(0, 25), c(0, 1000), type='n')
for (i in 181:250) { lines (1:24, train$casual[(i*24):((i+1)*24 - 1)]) }

