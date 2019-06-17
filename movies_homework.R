movies <- read.csv('Section6-Homework-Data.csv')
header_name <- c('Day', 'Director', 'Genre', 'MovieTitle', 'ReleaseDate', 'Studio', 'AdjustedGross', 'BudgetMill', 'GrossMill', 'IMDBRating',
                 'MovieLensRating',  'OverseasMill', 'Overseas', 'ProfitMill', 'Profit', 'RuntimeMin', 'UsMill', 'UsGrossMill')
colnames(movies) <- header_name
studioFilter <- movies$Studio %in% c('Buena Vista Studios', 'Fox', 'Paramount Pictures', 'Sony', 'Universal', 'WB')
genreFilter <- movies$Genre %in% c('action', 'adventure', 'animation', 'comedy', 'drama') 

movies_filter <- movies[studioFilter & genreFilter, ]

DG_gross_percentage_genre <- ggplot(data = movies_filter, aes(x=Genre, y=UsGrossMill))
DG_gross_percentage_genre + geom_jitter(aes(size=BudgetMill, colour=Studio)) + geom_boxplot(alpha = 0.5)+
xlab('Genre')+
  ylab('Gross%US')+
  ggtitle('Domestic Gross % by Genre')+
  theme(axis.title.x = element_text(colour = 'Blue', size= 20),
        axis.title.y = element_text(colour='Blue', size=20),
        text = element_text(family='Comic Sans MS'))

        