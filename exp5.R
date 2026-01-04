data <- data.frame( 
  A = c(10, 20, NA, 40, 50), 
  B = c(5, NA, 15, 20, 25), 
  C = c(2, 4, 6, NA, 10) 
) 
data$A[is.na(data$A)] <- mean(data$A, na.rm = TRUE) 
data$B[is.na(data$B)] <- mean(data$B, na.rm = TRUE) 
data$C[is.na(data$C)] <- mean(data$C, na.rm = TRUE) 
min_max_norm <- func on(x) { 
  (x - min(x)) / (max(x) - min(x)) 
} 
normalized_data <- as.data.frame(lapply(data, min_max_norm)) 
print(data) 
print(normalized_data)