Demographic_data = read.csv('P2-Demographic-Data.csv')
str(Demographic_data)
head(Demographic_data)
Demographic_data[,'Country.Name']

name_filter = Demographic_data$Country.Name == 'Malta'
Demographic_data[name_filter,]

