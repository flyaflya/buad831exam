## this script will get you 
## two of the four points on the 
## related exam question
## for the remaining two points,
## you will need to write more code

# install.packages("tidyverse")
library(tidyverse)

# create path to data folder
dataPath = file.path("data")

# create object with foldernames
custFolders = list.files(path = dataPath)

# get folder name of first customer
folderName = custFolders[1]

# for folder 1, get invoice file names
invFilePath = file.path("data",folderName)

# store file names in an object
invFileNames = list.files(path = invFilePath)

# view contents of first file name
fileName = file.path("data",folderName,invFileNames[1])
read_csv(fileName)

# store contents in object
invDF = read_csv(fileName)

# view contents
invDF

# sample question and answer:
# how many of widget5 were
# purchased by Costco
invDF %>%
  filter(partNum == "widget5") %>%
  group_by(partNum) %>%
  summarize(totalQty = sum(quantity))