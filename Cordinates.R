#CO-ORDINATES
m <- ggplot(data = movies, aes(x = CriticRating,
                               y = AudianceRating),
                 )
m + geom_point(aes(colour = Genre, size = BudgetMillions))


m + geom_point() +
  xlim(50,100) +
  ylim(50,100)
