
## new script to generate a new bunch of markdown scripts 


# https://www.reed.edu/data-at-reed/software/R/markdown_multiple_reports.html

## we generate multiple reports using the following 
## function:

?rmarkdown::render()

## You need to pass it an existing R markdown file. 
## You need to pass it the output file name... this will be using the output file type you want
## you need to pass it an output directory. 


## say we want to create a list of different data frames 

## First is data to plot a histogram. 

## second is the data to plot something 

## third is data to plot a datatable 


trade_groups <- c("Firefighter", "Milkman", "Electrician")


trade_list <- list()

for(i in 1:length(trade_groups)){ 
  
  a <- runif(100) ## add here a section to add the data specific to the trade group that is requested
  b <- rnorm(300)
  c <- rbinom(1,2,i/10)
  
  name <- paste("trade_group_", trade_groups[i])
  list <- list(uniform = a, normal = b, binomial = c)
  trade_list[[name]] <- list}
  
  ## creates the data necessary. 
  
  ## Now we use the
  


## we want it so that we can extract the list that we are interested into anew list

trade_list["Trade_group:  Firefighter"]

## this means we can now extract the firefighter section into a new list 

list <- trade_list["Trade_group:  Firefighter"]



## ## Now we understand the data we can print the names 

for(list_name in 1:length(trade_list)){ 
  
  print(names(trade_list[list_name]))}



for(trade_element in names(trade_list)){ 
  
rmarkdown::render('/Users/Jackb001/Desktop/R/auto_reporting/personal_example/list_script.Rmd',  # file 2
output_file = paste("report_", trade_element, '_', Sys.Date(), ".html", sep=''), 
output_dir = '/Users/Jackb001/Desktop/R/auto_reporting/personal_example/reports') }







  










