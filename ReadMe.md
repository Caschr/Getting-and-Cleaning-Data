# Read me for dataAnalysis function

## Instructions
To perform the analysis the following steps should be done  

1. Source the script run_analysis.R  
2. Run function dataAnalysis(), preferably assign the output to a variable. 
3. When the function is done it should display the "Analysis done" message.

 Below is a description of the functions in the script.
## Functions
**dataAnalysis(DataURL = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", IncludeData = FALSE)**  
Top function and the one that wraps all the other. The function takes two arguments, DataURL and IncludeData. The DataURL is the URL where the data is located and is by
default the location given by the instructors. The second argument, IncludeData, is whether the function should return the first data table, the one it calculates the mean from. If set to TRUE the function returns a list where the first item is a data table with the means, and the second item is the 
data table from which the means has been calculated. 

The dataAnalysis function starts by calling the getData function, then calls the mergeData function, the calls the cleanVar function and loads the names into a variable called varNames, which it then sets as names for the data table containing the merged data. The function then calls the 
calcmean function which then calculates the mean of each subject of each activity, and returns a data table. Depending on whether IncludeData is TRUE, a list or a data table is returned.

**getData(DataURL)**  
This function only takes one argument, the URL from which the data can be obtained. It is passed from the dataAnalysis function.  
The getData function starts off by creating a temporary file to which the zipfile is downloaded and a temporary directory to which the zipfile is unzipped. It then reads eight data frames:

1. test_data - The actual data from the test folder.
2. train_data - The actual data from the train folder.
3. test_label - The labels (activities) for the test data.
4. train_label - The labels (activities) for the train data.
5. test_subject - The subjects for the test data.
6. train_subject - The subjects for the train data.
7. label - The activities corresponding the the numeric labels in the data.
8. features - The variables of the data.

When all the data has been read to memory, the temp directory is cleaned. A list of eight items is returned (in the order specified above), containg the data.

**mergeData(input)**  
The mergeData function only takes one argument, the list of eight data frames that is returned from the getData function. The data frame is passed through the dataAnalysis function.  
The mergeData function uses data tables (note: this is different from the data frame, inherits from the data frame object), and starts by loading labels, subjects and the data into two separate data tables. It then assigns names (variable names) to the two data tables, from the features.
When the names has been assignned the to data tables is binded using rbind. 

