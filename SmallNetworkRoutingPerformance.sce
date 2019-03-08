2//Authors:
//Sachin Gopal (15BCE1188)
//Aashay Gondalia (15BCE1284)
//Dhruv Dixit (15BCE1324)
//VIT Chennai

//Code to compute the CPU time taken by each routing algorithm to return the
//Vector of the total distance between each network node and the source node and 
//Vector composed by the predecessor of each node in order to reach the source 
//node in respect with the shortest path.
//NOTE: Prim's Algorithm also returns Vector that gathers the chronological order 
//how network nodes are visited. Refer to documentation for details.

//Clear display and environment variables
clc
clear all


disp("For a Small Network Topology with Nodes in the network = 90 ");
//Creating a random topology which is Small in size
n=90;                      //network size is 90
L=1000;                     //network square area side is 1000
dmax=100;                   //locality radius is 100
[g]=NL_T_LocalityConnex(n,L,dmax);  //generation of a random topology in respect with the Locality method. 
i=NL_F_RandInt1n(length(g.node_x)); //selection of the source node
ind=1;                      //window index
g.node_diam(i)=40;          //node diameter
g.node_border(i)=10;        //node border
g.node_color(i)=5;          //node color
[f]=NL_G_ShowGraphN(g,ind);//graph visualization

//Application of the BFS algorithm
for i = 1:10                    //Run 10 iterations
    timer();                    //Initialize timer
    [dist,pred]=NL_R_BFS(g,i);  //application of NL_R_BFS
    A(i) = timer()              //Store timer value in array
end
c=mean(A);                      //Calculate average time taken
disp(c,"BFS:")                 //Display average time

//Application of the Weighted BFS algorithm
for i = 1:10
    timer();
    [dist,pred]=NL_R_BFSWeight(g,i);//application of NL_R_BFSWeight
    A(i) = timer()
end
c=mean(A);
disp(c, "Weighted BFS:")

//Application of the Bellman-Ford algorithm
for i = 1:10
    timer();
    [dist,pred]=NL_R_BellmanFord(g,i);//application of NL_R_BellmanFord
    A(i) = timer()
end
c=mean(A);
disp(c,"Bellman-Ford:")

//Application of the DFS algorithm
for i = 1:10
    timer();
    [dist,pred]=NL_R_DFS(g,i);//application of NL_R_DFS
    A(i) = timer()
end
c=mean(A);
disp(c,"DFS:")

//Application of the Weighted DFS algorithm
for i = 1:10
    timer();
    [dist,pred]=NL_R_DFSWeight(g,i);//application of NL_R_DFSWeight
    A(i) = timer()
end
c=mean(A);
disp(c,"Weighted DFS:")

//Application of the Dijkstra algorithm
for i = 1:10
    timer();
    [dist,pred]=NL_R_Dijkstra(g,i);//application of NL_R_Dijkstra
    A(i) = timer()
end
c=mean(A);
disp(c,"Dijkstra:")

//Application of the Floyd-Warshall algorithm
for i = 1:10
    timer();
    [dist,pred]=NL_R_FloydWarshall(g);//application of NL_R_FloydWarshall
    A(i) = timer()
end
c=mean(A);
disp(c,"Floyd-Warshall:")

//Application of the Prim's algorithm
for i = 1:10
    timer();
    [dist,v,pred]=NL_R_Prim(g,i,2,1);//application of NL_R_Prim, setting Display Parameter as 2 and window index as 1
    A(i) = timer()
end
c=mean(A);
disp(c,"Prim:")
