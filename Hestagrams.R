movies <- read.csv(file.choose())
movies
colnames(movies)  <- c("Film", "Genre", "CriticRating", "AudianceRating", 
                       "BudgetMillions", "Year")
movies

#HISTOGRAMS



library(ggplot2)
s <- ggplot(data = movies, aes(x = BudgetMillions))
s + geom_histogram(bandwidth = 10)

#adding details
s + geom_histogram(bandwidth = 10, aes(fill = Genre), colour = "Black")
s + geom_density(aes(fill =Genre), position = "stack")

#LAYERING AESTHETICS
 
t <- ggplot(movies)
#AudianceRating
t + geom_histogram( binwidth = 10, 
                    aes(x = AudianceRating,
                        fill = Genre),
                    position = "Stack", colour = "Black")
#CriticRating
t + geom_histogram( binwidth = 10, 
                    aes(x = CriticRating,
                        fill = Genre),
                    position = "Stack", colour = "Black")
#BudgetMillions
t + geom_histogram( binwidth = 10, 
                    aes(x = BudgetMillions,
                        fill = Genre),
                    position = "Stack", colour = "Black")



u <- ggplot(data = movies, aes(x = BudgetMillions,
                   y = CriticRating))
u + geom_point() + geom_smooth(fill = NA)




#BOXPLOTS


v <- ggplot(data = movies, aes(x = Genre,
                               y = AudianceRating,
                               colour = Genre))
v + geom_jitter() + geom_boxplot( size = 1.2,
                                  alpha =0.5) 
