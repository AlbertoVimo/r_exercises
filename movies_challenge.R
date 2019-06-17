
movies <- read.csv('P2-Movie-Ratings.csv')

colnames(movies) <- c('Film', 'Genre', 'CriticsRating', 'AudienceRating', 'BudgetMillions', 'YearRelease')

plot <- ggplot(data=movies, aes(x=Genre, y=CriticsRating, colour=Genre))

plot + geom_point() + geom_smooth()

plot + geom_jitter()+geom_boxplot(alpha=0.5)
