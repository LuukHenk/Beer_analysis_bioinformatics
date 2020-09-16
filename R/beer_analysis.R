beers_info <- read.csv('../dataset/beers.csv', header=TRUE)
plot(beers_info$abv, beers_info$ibu)
boxplot(beers_info$abv)
boxplot(beers_info$ibu)
