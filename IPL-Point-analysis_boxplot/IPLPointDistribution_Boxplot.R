# To read the csv dataset for IPL team-wise points from 2008-2020 from Github
url <- getURL("https://raw.githubusercontent.com/arunscode-data/Public-Repo/Dataset/Points%20summary_IPL_2008-2020.csv")
IPLData <- read.csv("https://raw.githubusercontent.com/arunscode-data/Public-Repo/Dataset/Points%20summary_IPL_2008-2020.csv")
# To display the data set
IPLData 
# Summary of the attributes in the dataset
summary(IPLData)
# To set the background color for the boxplot
par(bg = colors()[478])
# Boxplot for total team points across years
# range=0.0 ensures the Whiskers are extended till the outliers
# col sets the color for the boxes
IPLpointboxplot <- boxplot(IPLData$Points~IPLData$Year,ylab = 'Points',xlab = 'Year', 
        main = 'IPL Point distribution (2008-2020)',
        range = 0.0,
        col = colors()[636])
# To display the resultant plot
IPLpointboxplot

