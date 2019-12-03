#### Use the usethis package to get exam
#### data files.  If you did not install
#### the usethis package during class,
#### run install.packages("usethis")

## create folder for class materials
## set your working directory in R to that folder:
## Session -> Set Working Directory -> Choose Directory

## ONLY AFTER DOING ABOVE, RUN THE BELOW LINES
## using CTRL + ENTER (or CMD + ENTER on Mac)
classURL = "github.com/flyaflya/buad831exam/archive/master.zip"

## install.packages("usethis")
usethis::use_course(url = classURL, destdir = getwd())

## this will create a new folder in your working 
## directory called buad831exam-master
## it will also open a new project called
## buad831exam-master in a new RStudio Window
## From the new window, use the Files pane
## to navigate and open getStartedWithExamQuestion.R

