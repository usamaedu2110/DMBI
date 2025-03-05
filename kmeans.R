newiris <- iris
newiris$Species <- NULL
set.seed(123)  
kc <- kmeans(newiris, centers = 3, nstart = 25)  
print(kc)
table(iris$Species, kc$cluster)
plot(newiris$Sepal.Length, newiris$Sepal.Width, col = kc$cluster, 
     pch = 16, main = "K-Means Clustering of Iris Data", 
     xlab = "Sepal Length", ylab = "Sepal Width")
points(kc$centers[, c("Sepal.Length", "Sepal.Width")], 
       col = 1:3, pch = 8, cex = 2)
