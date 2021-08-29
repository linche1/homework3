library("ggplot2")
library("magrittr")
Sys.setlocale("LC_ALL","Chinese")
path <- getwd()
path
file <- paste(path,"/","blood.data.txt", sep="")
file
data <- read.delim(file, sep = "\t", header = TRUE)
data<-na.omit(data) # delete NA
data
data[which(data$sex == 1),'sex'] <- 'male'
data[which(data$sex == 2),'sex'] <- 'female'
data
# sex ：1= male，2 = female
# sex | hematocrit
# Scatter plot
p1 <- ggplot(data, aes(x = sex, y = hematocrit, colours('blue', 'red')))
p1.geo_point <- p1 + geom_point()
p1.geo_point

# Box line diagram
p1.geom_boxplot <- p1 + geom_boxplot(fill ="green") + theme_bw()
p1.geom_boxplot

# age | hamatocrit
# Scatter plot

p2 <- ggplot(data, aes(x = age, y = hematocrit, group = 100))
p2.geo_point <- p2 + geom_point()
p2.geo_point


# sex | red.blood.cell.count
# Scatter plot
p3 <- ggplot(data, aes(x = sex, y = red.blood.cell.count))
p3.geo_point <- p3 + geom_point()
p3.geo_point

# Box line diagram
p3.geom_boxplot <- p3 + geom_boxplot(fill ="green") + theme_bw()
p3.geom_boxplot

# age | red.blood.cell.count
# Scatter plot

p4 <- ggplot(data, aes(x = age, y = red.blood.cell.count, group = 100))
p4.geo_point <- p4 + geom_point()
p4.geo_point
data

# red.blood.cell.count and hemoglobin
# 红细胞与血红蛋白数量

p5 <- ggplot(data, aes(x = red.blood.cell.count, y = hemoglobin, colours('blue', 'red')))
p5.geo_point <- p5 + geom_point()
p5.geo_point

# serum.iron and hemoglobin
# 血清铁血红蛋白
p6 <- ggplot(data, aes(x = hemoglobin, y = serum.iron, colours('blue', 'red')))
p6.geo_point <- p6 + geom_point()
p6.geo_point

# serum.ferritin and serum.transferrin.saturation 
# 血清铁蛋白、血清转铁蛋白饱和度。

p7 <- ggplot(data, aes(x = serum.ferritin, y = serum.transferrin.saturation, colours('blue', 'red')))
p7.geo_point <- p7 + geom_point()
p7.geo_point
