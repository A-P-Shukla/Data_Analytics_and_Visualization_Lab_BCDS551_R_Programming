# Create a numeric vector 
data <- c(12, 34, 56, 78, 90) 
# Calculate Mean 
mean_value <- mean(data) 
cat("Mean:", mean_value, "\n") 
# Calculate Median 
median_value <- median(data) 
cat("Median:", median_value, "\n") 
# Custom func on to calculate Mode 
calculate_mode <- func on(x) { 
  uniq_x <- unique(x) 
  uniq_x[which.max(tabulate(match(x, uniq_x)))] 
} 
# Create a numeric vector for Mode 
data_mode <- c(12, 34, 56, 12, 78, 90, 34, 12) 
# Calculate Mode 
mode_value <- calculate_mode(data_mode) 
cat("Mode:", mode_value, "\n") 
# Calculate Standard Devia on 
sd_value <- sd(data) 
cat("Standard Devia on:", sd_value, "\n") 