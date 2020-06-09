#--------------DATA
m <- function(){
movies <-read.csv("P2-Movie-Ratings.csv")
getwd()
movies <- read.csv(file.choose())
movies
colnames(movies)  <- c("Film", "Genre", "CriticRating", "AudianceRating", 
                       "BudgetMillions", "Year")
movies
head(movies)
summary(movies)
str(movies)
}
m()
#factors are catogorical variables which help to store data in form of numbers



movies$Year <- factor(movies$Year)
movies
str(movies)
factor(movies$Year)
movies$Year <- factor(movies$Year)
movies
movies$Year
str(movies)

movieslibrary(ggplot2)

#---------------Asthetics
#ARRANGING X ANY Y CO ORDINATES
library(ggplot2)
ggplot(data = movies, aes( x = CriticRating, y = AudianceRating))
str(movies)

#---------adding geometry
ggplot(data = movies, aes( x = CriticRating, y = AudianceRating)) +
    geom_point()
