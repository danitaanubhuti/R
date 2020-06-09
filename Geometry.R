movies <-read.csv(file.choose())
getwd()
movies <- read.csv(file.choose())
movies
colnames(movies)  <- c("Film", "Genre", "CriticRating", "AudianceRating", 
                       "BudgetMillions", "Year")
movies
library(ggplot2)





#MAPPING VS SETTING
r <- ggplot(data = movies, aes(x = CriticRating,
                               y = AudianceRating))
r + geom_point()
r+geom_point(aes(colour = Genre)) #used to map a colour to aesthetics
r+geom_point(colour ="Green" )               
