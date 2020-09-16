### Script info {{{
# @title       | Beer analysis
# @description | Generates a plot that compares the beer percentage, 
#              | beer bitterness and beer style
# @input       | The beer dataset found at '../dataset/beers.csv'
#              | (Obtained from https://www.kaggle.com/nickhould/craft-cans)
#	@output      | graphPlot containing the bitterness units on the x-axis and the
#              | alcohol percentage on the y-axis. |
# @authors     | Martijn Melissen, Angela Pelissou Ayuso, and Luuk Perdaems
# }}}

### Main script {{{
# Import ggplot
library(ggplot2)

# Load data for plotting
crafts_beer_data <- read.csv('../dataset/beers.csv', header=TRUE)

# Plot data with ggplot
ggplot(crafts_beer_data, aes(x = ibu, y= abv)) + 
  geom_jitter() +
  geom_smooth(method = "lm") +
  theme(legend.position="none") +
  labs(x = "Bittering units", y = "Alcohol content by volume") +
  ggtitle('The relation between alcohol percentage and bitterness in craftbeers')
# }}}