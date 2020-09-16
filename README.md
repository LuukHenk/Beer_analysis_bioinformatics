# Craft beer analysis
> Authors: Martijn Melissen, Angela Pelissou Ayuso, and Luuk Perdaems

A lot of craft beer stores have been popping up lately, which gives us the opportunity to do some interesting analysis! For this analysis, we determined the difference between alcohol percentage and bitterness per beer style.

## The dataset
An open-source [dataset] (https://www.kaggle.com/nickhould/craft-cans) was used for this project, which contains information of more than 2000 craftbeers and over 500 breweries. The dataset can be found in the dataset folder.

The beer.csv file in the dataset folder contains information per beer:
- abv - The alcoholic content by volume (between 0 and 1)
- ibu - The amount of [bittering units](https://www.thespruceeats.com/international-bittering-units-353254)
- id - The unique beer ID
- name - The name of the beer
- style - The beer style (lager, ale, IPA, etc.)
- brewery_id - The ID of the brewery (linked with ./dataset/breweries.csv)
- ounces - The size of beer in ounces

The breweries.csv file in the dataset folder contains information about the different breweries:
- brewery_id - The ID of the brewery (linked with ./dataset/beers.csv)
- name - Name of the brewery
- city - The city that the brewery is located in
- state - The state that the brewery is located in

## The analysis

