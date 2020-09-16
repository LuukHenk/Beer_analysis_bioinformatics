### Script info {{{
# @title       | Beer analysis
# @description | Generates a plot that compares the beer percentage with
#              | beer bitterness
# @input       | The beer dataset found at '../dataset/beers.csv'
#              | (Obtained from https://www.kaggle.com/nickhould/craft-cans)
#	@output      | graphPlot containing the bitterness units on the x-axis and the
#              | alcohol percentage on the y-axis.
# @authors     | Martijn Melissen, Angela Pelissou Ayuso, and Luuk Perdaems
# }}}

### Functions {{{
beerplot <- function(data) {
  ggplot(data, aes(x = ibu, y= abv)) + 
    geom_point(size = 1.2, color = "grey5", shape = 1) +
    geom_smooth(method = "lm") +
    scale_x_continuous(
      name = "Bittering units",
      breaks = seq(0, 140, by = 20),
      expand = c(0, 0),
      limits = c(0, 140)
    ) +
    scale_y_continuous(
      name = "Alcohol content by volume",
      breaks = seq(0, 0.13, by = 0.02),
      expand = c(0, 0),
      limits = c(0, 0.13)
    ) +
    theme_light() +
    labs(
      title = "The relation between alcohol percentage and bitterness in craftbeers"
    ) +
    theme(
      axis.text = element_text(size = 8),
      legend.position = "none",
      plot.title = element_text(hjust = 0.5, face = "bold", size = 15, lineheight = 10)
    )
}
# }}}

### Main script {{{
# Import ggplot
library(ggplot2)

# Load data for plotting
crafts_beer_data <- read.csv('../dataset/beers.csv', header=TRUE)

# Plot data with ggplot; pointplot with a trend line
beerplot(data = crafts_beer_data)
# }}}