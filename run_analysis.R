dataAnalysis <- function(DataURL = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", IncludeData = FALSE, downloadData = FALSE) {
  rawdata <- getData(DataURL, downloadData)
  datatable <- mergeData(rawdata)
  varNames <- cleanVar(datatable)
  setnames(x=datatable, old=varNames)
  meanDatatable <- calcmean(datatable)
  message("Analysis done")

  if(IncludeData) {
        list(meanDatatable, datatable)
  }
  else {
          meanDatatable
  }
}


getData <- function(DataURL, downloadData = downloadData){
        permwd <- getwd()

        if(downloadData) {
                downfile <- tempfile()
                zipdir <- tempfile()
                dir.create(zipdir)
                download.file(url=DataURL, destfile=downfile)
                unzip(downfile, exdir=zipdir)
                setwd(zipdir)
        }
    message("Reading data")
      test_data <- read.table(file="UCI HAR Dataset/test/X_test.txt", sep="")
    message("Finished file 1/7")
      train_data <- read.table(file="UCI HAR Dataset/train/X_train.txt", sep="")
    message("Finished file 2/7")
      test_label <- read.table(file="UCI HAR Dataset/test/y_test.txt", sep="", colClasses="factor")
    message("Finished file 3/7")
      train_label <- read.table(file="UCI HAR Dataset/train/y_train.txt", sep="", colClasses="factor")
    message("Finished file 4/7")
      test_subject <- read.table(file="UCI HAR Dataset/test/subject_test.txt", sep="", colClasses="factor")
    message("Finished file 5/7")
      train_subject <- read.table(file="UCI HAR Dataset/train/subject_train.txt", sep="", colClasses="factor")
    message("Finished file 6/7")
      label <- read.table(file="UCI HAR Dataset/activity_labels.txt", sep="", colClasses=c("numeric", "character"))
    message("Finished file 7/7")
      features <- read.table(file="UCI HAR Dataset/features.txt", sep="", as.is=TRUE)
    message("Finished importing")

        if(downloadData) {
                unlink(zipdir, recursive=TRUE)
                unlink(downfile)
        }

    setwd(permwd)
    message("Done")
    list(test_data, train_data, test_label, train_label, test_subject, train_subject, label, features)
}

mergeData <- function(input) {
    library(data.table)
    message("Merging data")
    list_data <- input
    dt_test <- data.table(list_data[[3]], list_data[[5]], list_data[[1]])
    dt_train <- data.table(list_data[[4]], list_data[[6]], list_data[[2]])

    names = c("label", "subject", list_data[[8]][, 2])
    setnames(dt_test, names)
    setnames(dt_train, names)
    dt <- rbind(dt_train, dt_test)

    label = camelCase(tolower(list_data[[7]][,2]), sep="_")
    label_factor <- factor(label, levels=label)
    subject_factor <- factor(seq(from=1, to=30, by=1), levels=seq(from=1, to=30, by=1))
    levels(dt$label) <- label_factor
    levels(dt$subject) <- subject_factor
    setkey(dt, subject, label)
    dt[, c(1, 2, grep("-mean\\(|-std\\(", names(dt))), with=FALSE]
}

cleanVar <- function(input) {
  message("Cleaning variables")
    varnames <- names(input)
    varnames <- gsub(pattern="-", replacement="", x = varnames)
    varnames <- gsub(pattern="^t", replacement="Time.", x = varnames)
    varnames <- gsub(pattern="^f", replacement="Freq.", x = varnames)
    varnames <- gsub(pattern="mean\\(\\)", replacement="Mean.", x = varnames)
    varnames <- gsub(pattern="std\\(\\)", replacement="StandardDeviation.", x = varnames)



    varnames <- gsub(pattern="Mag", replacement="Magnitude.", x = varnames)
    varnames <- gsub(pattern="BodyBody", replacement="Body", x = varnames)
    varnames <- gsub(pattern="\\.$", replacement="", x = varnames)

    varnames <- gsub(pattern="Acc", replacement=".Acceleration.", x = varnames)
    varnames <- gsub(pattern="Gyro", replacement=".Gyro.", x = varnames)

    varnames <- gsub(pattern="Acceleration.Jerk", replacement="LinearAcceleration.", x = varnames)
                gsub(pattern="Gyro.Jerk", replacement="AngularAcceleration.", x = varnames)
}

calcmean <- function(input) {
  dt <- input
  dtaggregated <- aggregate(dt[,3:ncol(dt), with=FALSE], by=list(subject=dt$subject, label=dt$label), FUN=mean, na.rm=TRUE)
  dtaggregated
}

camelCase <- function(input, sep) {
    convert <- function(x, sep) {

      if(grepl(sep, x)) {
        string <- tolower(strsplit(x, sep)[[1]])
        string[2] <- paste(toupper(substring(string[2],1,1)), substring(string[2],2), sep="")
        paste(string, sep="", collapse="")
    }

    else {x}
  }
  paste(lapply(input, convert, sep))
}