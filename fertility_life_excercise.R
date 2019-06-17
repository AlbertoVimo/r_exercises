#Generating data frames
ww_info_c <- read.csv('P2-Section5-Homework-Data.csv')
ww_info_1960_v = data.frame(Country.Code = Country_Code, Life.Expectancy=Life_Expectancy_At_Birth_1960)
ww_info_2013_v = data.frame(Country.Code = Country_Code, Life.Expectancy=Life_Expectancy_At_Birth_2013)
ww_info_1960_c = ww_info_c[ww_info_c$Year==1960,]
ww_info_2013_c = ww_info_c[ww_info_c$Year==2013,]

#merging
ww_info_1960 = merge(ww_info_1960_c, ww_info_1960_v, by.x='Country.Code', by.y = 'Country.Code')
ww_info_2013 = merge(ww_info_2013_c, ww_info_2013_v, by.x='Country.Code', by.y = 'Country.Code')

#plotting
qplot(data=ww_info_1960, x = Fertility.Rate, y = Life.Expectancy, colour=Region, size=I(5), alpha=I(0.7),
      main='Life Expectancy 1960')
qplot(data=ww_info_2013, x = Fertility.Rate, y = Life.Expectancy, colour=Region, size=I(5), alpha=I(0.7),
      main='Life Expectancy 2013')
