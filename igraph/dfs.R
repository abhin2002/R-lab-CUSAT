library(igraph)

add_edge <- function(graph, v1, v2) {
  graph <- add_edges(graph, c(v1, v2))
  return(graph)
}

graph <- make_graph(edges = c(1,2, 1,5 ,5,4 ,4,3 ,3,6 ,3,5 , 5,6 ,2,4), n=6, directed = FALSE)

print(graph)
plot(graph)

g <- add_edge(graph, 1, 6)


print(g)
plot(g)

dfs_traversal <- function(graph, start_vertex) {
  dfs_result <- dfs(graph, start_vertex)
  return(V(graph)[dfs_result$order])
}

traversal_order <- dfs_traversal(graph, 1)
print(traversal_order)
