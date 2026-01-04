data <- read.csv("houses_data.csv") 
data_std <- scale(data) 
pca_result <- prcomp(data_std, center = TRUE, scale. = TRUE) 
variance_explained <- pca_result$sdev^2 
cumula ve_variance <- cumsum(variance_explained) / sum(variance_explained) 
print(variance_explained) 
print(cumula ve_variance) 
library(ggplot2) 
df_explained_variance <- data.frame( 
  PC = 1:length(variance_explained), 
  Explained_Variance = variance_explained * 100, 
  Cumula ve_Explained_Variance = cumula ve_variance * 100 
) 
ggplot(df_explained_variance, aes(x = PC)) + 
  geom_bar(aes(y = Explained_Variance), stat = "iden ty", fill = "dodgerblue") + 
  geom_line(aes(y = Cumula ve_Explained_Variance), color = "red") + 
  geom_point(aes(y = Cumula ve_Explained_Variance), color = "red") + 
  labs(x = "Principal Component", y = "Explained Variance (%)") + 
  gg tle("Explained Variance by Principal Component")