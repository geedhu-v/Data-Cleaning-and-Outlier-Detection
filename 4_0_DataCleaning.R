##################################################
### PROG8430                                    ##
### Quick R Exercises                           ## 
##################################################
#                                               ##
##################################################
# Written by Peiyuan Zhou                       ##
# ID: 123456                                    ##
##################################################
### Basic Set Up                                ##
##################################################
# Clear plots
if(!is.null(dev.list())) dev.off()
# Clear console
cat("\014") 
# Clean workspace
rm(list=ls())
options(scipen=9)

##################################################
### Create Example Data                         ##
##################################################
data <- data.frame(x1 = c(1:4, 99999, 1, NA, 1, 1, NA),   # Create example data frame
                   x1 = c(1:5, 1, "NA", 1, 1, "NA"),
                   x1 = c(letters[c(1:3)], "x  x",  "x", "   y    y y", "x", "a", "a", NA),
                   x4 = "",
                   x5 = NA)
data  
# NA:R symbol that represents a missing or undefined value. the value is missing or unknown.
# "NA":a character string literal in R. "NA" will be considered as an actual value. 

#1. Modify Column Names
 
colnames(data) # Print column names
colnames(data) <- paste0("col", 1:ncol(data))
# Modify all column names
data

#2. Format Missing Values
 
data[data ==
       ""] #Print blank data cells
data[data ==
       ""] <- NA #Replace blanks by NA
data$col2 #Print column
data$col2[data$col2 == "NA"] <- NA 
#Replace character "NA”
data


#3. Remove Empty Rows & Columns
   
data <- data[rowSums(is.na(data)) != ncol(data), ]
# Drop empty rows
data
data <- data[ , colSums(is.na(data)) != nrow(data)]
# Drop empty column
data

# ~c to remove one column              

#4.Remove Rows with missing values
data <- na.omit(data)
# Delete rows with missing values 
data                                                      # Print updated data frame

#change the value to the mean 
#data$col2 <- as.integer(data$col2)
#str(data)
#data$col2[is.na(data$col2)] <- mean(data$col2, na.rm=TRUE)
#data

#5. Remove duplicates
 
data <- unique(data)
# Exclude duplicates
data 

#6. Modify Classes of Columns
str(data) #sapply(data, class)
#automatically convert the data type
data <- type.convert(data, as.is = TRUE)
str(data)

#7.Remove Spaces in Character Strings 
data$col1[data$col1 %in% boxplot.stats(data$col1)$out]
# Identify outliers in column
data <- data[!data$col1 %in% boxplot.stats(data$col1)$out,]
#Remove rows with outliers
data

#8.Detect and Remove Outliers
data$col3 <- gsub(" ", 
                  "", data$col3)
# Delete white space in character strings
data  

 
#9. Combine Categories
 
data$col3[data$col3 %in% c("b", "c")] <- "a"
# Merge categories
data
