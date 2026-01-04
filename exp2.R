library(readxl) 
library(writexl) 
df <- data.frame( 
  ID = c(1, 2, 3, 4), 
  Name = c("Amit", "Neha", "Ravi", "Pooja"), 
  Marks = c(85, 90, 78, 88) 
) 
write.csv(df, "data.csv", row.names = FALSE) 
write.table(df, "data.txt", sep = "\t", row.names = FALSE) 
write_xlsx(df, "data.xlsx") 
csv_data <- read.csv("data.csv") 
txt_data <- read.table("data.txt", sep = "\t", header = TRUE) 
xls_data <- read_excel("data.xlsx") 
print(csv_data) 
print(txt_data) 
print(xls_data)