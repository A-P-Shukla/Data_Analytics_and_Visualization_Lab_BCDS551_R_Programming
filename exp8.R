library(ggplot2) 
data(iris) 
iris_features <- iris[, 1:4] 
set.seed(123) 
kmeans_result <- kmeans(iris_features, centers = 3, nstart = 10) 
iris_clustered <- cbind(iris, Cluster = as.factor(kmeans_result$cluster)) 
ggplot(iris_clustered, aes(x = Sepal.Length, y = Sepal.Width, color = Cluster)) + 
  geom_point(size = 3) + 
  labs( 
    tle = "K-Means Clustering of Iris Data", 
    x = "Sepal Length", 
    y = "Sepal Width" 
  ) + 
  theme_minimal()