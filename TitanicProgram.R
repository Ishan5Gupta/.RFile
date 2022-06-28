library(ggplot2)
titanic = read.csv('Titanic.csv', stringsAsFactors = FALSE)
titanic$Pclass = factor(titanic$Pclass)
titanic$Survived = factor(titanic$Survived)
#titanic$Sex = factor(titanic$Sex)
summary(titanic)
str(titanic)
ggplot(titanic, aes(x=Pclass, color = Sex, fill = Sex)) + geom_bar() + theme_bw() + theme(legend.position="top")
ggplot(titanic, aes(Sex, Age)) + geom_boxplot()
ggplot(titanic, aes(x=Pclass, y=Age, fill = Sex)) + geom_boxplot(outlier.colour = "dark orange", outlier.shape = 4, notch = TRUE) + coord_flip() + theme_bw() + ggtitle("Boxplot to plot Age vs Passenger Class")
ggplot(titanic, aes(x=Age)) + geom_histogram(binwidth = 10)
ggplot(titanic, aes(x=Age, color=Sex, fill = Sex)) + geom_histogram(binwidth = 10) + theme_bw()
mydata <- mtcars[, c(1,3,4,5,6,7)]
head(mydata)
g_base = ggplot(mpg, aes(displ, hwy))
g_aes = g_base + geom_point(aes(color = drv), size = 4, alpha = 0.5) + geom_smooth(size = 1,linetype = 1, se = TRUE) + theme_bw(base_family = "Times")
g_aes + labs(x="engine displacement (litres)", y = "highway(miles/gallon"), title = "Fuel Economy Data from 1999 and 2008 for 38 models of car" subtitle = "statistics bootcamp" color = "front/rear/four wheels"


library(readxl)
Dominos <- read_excel("Domcuments/MTL 2700/Restaurant Drive Thru.xlsx")
View(Dominos)

#Perform the one-tailed t test.
t.test(Dominos$Time, alternative = "less", mu=173.62)


