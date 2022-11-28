#organize .csv
#reshape into long format
# create db

#setwd
setwd("C:/Users/nilsk/Documents/Projects/LablyzeR/Data")

#libs used
library(readr)
library(reshape2)


#################################### Prepare Dataset #########################################################

#shorten dataset
DatabaseTest <- Database_ImAi[1:40,]
#check names
names(DatabaseTest)

#check NA
DatabaseTest[is.na(DatabaseTest[])]
is.na(DatabaseTest)

#Set NA zero
DatabaseTest[is.na(DatabaseTest)] = 0


NewNames <- as.character(seq(1:length(names(Database_ImAi))))
names(Database_ImAi) <- NewNames
names(Database_ImAi)
Database_ImAi[is.na(Database_ImAi)] = 0
Database_ImAi <- Database_ImAi %>% na.omit()

write.csv(x= Database_ImAi,file = "C:\\Users\\nilsk\\Documents\\PROJECTS\\LablyzeR\\data\\New.csv",row.names = F)




