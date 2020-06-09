#DATA AND AESTHETICS



#DATA


movies <- read.csv(file.choose())
movies
colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "Budget", "Year")
movies


#ASTHETICs
library(ggplot2)
ggplot(data = movies, aes(x = AudienceRating,
                          y = CriticRating,
                          colour = Genre, #adding colour
                          size = Budget)) + #adding geometry
  geom_point()

#Layers

#INSERING IN OBJECT

p <- ggplot(data = movies, aes(x = AudienceRating,
                          y = CriticRating,
                          colour = Genre, #adding colour
                          size = Budget))#adding geometry
p+geom_point() #layering with point

p+geom_line() #layering with point



#Multiple  Layers
p+geom_point()+geom_line()
p+geom_line()+geom_point()


#OVERIDING Aesthetics
q <- p <- ggplot(data = movies, aes(x = AudienceRating,
                                    y = CriticRating,
                                    colour = Genre, 
                                    size = Budget))
#add layer
q+geom_point()


#overinding aesthetics
q+geom_point(aes(size = CriticRating))
q+geom_point(aes(colour = CriticRating))
q+geom_point(aes(x = Budget))# to override the x axis
       +xlab("BUDGET")# to change the name on X axis
q+geom_point(size = 1)
q+geom_line(size = 1)
