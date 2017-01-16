# Graphs

##Intro
* Defined by a pair G = (V,E) where V = set of vertices / nodes, and E is a set edges
* Used to represent models, nodes represent variable
* Independence structure can be read from the graph
* Can be directed, undirected, or bi-directed

# Plotting

## Switching btw graphNEL, igraph, and adjacenct matrix
* using the as() function
* gNg, graphNEL object
* `ig <- as(gNg, "igraph")` 
* `ag <- as(gNg, "matrix")`
* `gNg <- as(ig, "graphNEL")`

# Undirected Graphs
* no indication of direction
* can be created in form of "graphnel" , "matrix" and "igraph" from `result`
* `ug0 <- ug(~ a:b + b:c:d + e) `
* `plot(ug0)`

access nodes and edges
* `nodes(ug0)`
* `edges(ug0)`

##Complete Graph
* Graph is said to be complete when all vertices are **connected**
* G = (V,E) is compleete if V is **complete**

##Clique
* Clique is a maximal complete subset
* Clique of a graph denoted with C(G)
* `maxClique()` returns the cliques of a graph object
`maxClique(ug0)`

# Directed Acyclic Graphs (DAG)

## Definition
* Directed graph G = (V,E) where V is a set of complete vertices and E is a set of **directed edges**
* DAG if condition above and **no directed cycles**

## Plotting
* created using `dag(x , result = c("graphnel", "igraph", "matrix"))`
* `dag0 <- dag(~a + b*a + c*a*b +  e*a + d*e + g*f) `
* `vpar(dag0)` returns list of parents of each node


## Other Functions
* `parents()` returns just parents
* `children()` returns just children
* `ancestralSet()` returns selected nodes and its parents
* `separates("a", "d", c("b", "c"), ug0)`, checks if {b,c} separates {a,d}


## DAG Operations
* Converting into and **undirected** graph
* use `moralize()`

# Conditional Independence

* A ⊥ B | C is when A and B are separated by a set C
* Read as A and B are conditionally independent, given C
* f(A,B | C) = f(A|C)f(B|C)


