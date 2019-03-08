README

I. Authors

Sachin Gopal (15BCE1188)
Aashay Gondalia (15BCE1284)
Dhruv Dixit (15BCE1324)
School of Computing Science and Engineering
VIT Chennai

II. File list

1.  BellmanFordComparison.sce
2.  BFSComparison.sce
3.  BFSWeightComparison.sce
4.  DFSComparison.sce
5.  DFSWeightComparison.sce
6.  DijkstraComparison.sce
7.  FloydWarshallComparison.sce
8.  PrimComparison.sce
9.  GiganticNetworkRoutingPerformance.sce
10. LargeNetworkRoutingPerformance.sce
11. MediumNetworkRoutingPerformance.sce
12. SmallNetworkRoutingPerformance.sce
13. TinyNetworkRoutingPerformance.sce
14. VeryLargeNetworkRoutingPerformance.sce

III. Objective

To compare various Network Routing Algorithms in use today, on the basis of the total CPU time taken to execute them.
We implemented these algorithms on SCILAB-5.5.2 environment.
The algorithms that are implemented on SCILAB-5.5.2 are as follows:
1. BFS (Breadth First Search)
2. BFS Weighted
3. Bellman-Ford
4. DFS (Depth First Search)
5. DFS Weighted
6. Dijkstra’s Algorithm
7. Floyd Warshall’s Algorithm
8. Prim’s Algorithm

NOTE:

First, we compute the CPU time for a particular algorithm for all the topologies (i.e. 1. to 8.). 
Then, for a particular topology we calculate the CPU time for all the algorithms (i.e. 9. to 14.). 

IV. Key Findings

1. Floyd Warshall is very slow in case of network with nodes = 180 or higher.
2. BFS and DFS perform almost same for small networks with nodes = 80
3. It can be seen as the number of nodes in a network increases, execution time increases exponentially.
4. DFS Weight executes fastest even for Very Large Network with nodes = 180 or higher.
5. Correlation between BFS, BFSWeight, DFS, and DFSWeight yields high coefficient. (i.e. Similar performance but not identical)