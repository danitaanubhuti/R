#FAUCETS

#HIST0GRAMS
v <- ggplot(data = movies, aes(x=BudgetMillions))
v + geom_histogram(binwidth = 10,aes(fill = Genre),
                                     colour = "Black") +
  facet_grid(Genre~., scales = "free")


#GEOM_POINT
w <- ggplot(data = movies, aes(x = AudianceRating, 
                              y = CriticRating),
                               colour = Genre)
w + geom_point(aes(size = BudgetMillions)) + facet_grid(Genre~., scale = "free")
w + geom_point(size = 1) + facet_grid(Genre~Year, scale = "free") +
   geom_smooth()



w + geom_point(size = 1, aes(colour = Genre)) + facet_grid(Genre~Year, scale = "free") +
  geom_smooth() +
  coord_cartesian(ylim = c(0,100))

