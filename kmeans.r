result<- kmeans(diabetes6, 4)
result
plot(diabetes6, col = result$cluster)
