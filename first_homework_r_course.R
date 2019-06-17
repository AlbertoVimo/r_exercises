revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

profit_each_month <- round((revenue - expenses)/1000,0)
profit_AT_each_month <- round(profit_each_month - abs(profit_each_month * .30)/1000, 0)
profit_m_each_month <- (profit_AT_each_month / revenue) * 100

mean_year <- mean(profit_AT_each_month)

good_months <- profit_AT_each_month[profit_AT_each_month > mean_year]
bad_months <- profit_AT_each_month[profit_AT_each_month < mean_year]

best_month <- max(profit_AT_each_month)
worst_month <- min(profit_AT_each_month)