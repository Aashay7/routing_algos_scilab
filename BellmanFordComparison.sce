//Authors:
//Sachin Gopal (15BCE1188)
//Aashay Gondalia (15BCE1284)
//Dhruv Dixit (15BCE1324)
//School of Computing Science and Engineering
//VIT Chennai

//Code to compute the CPU time taken by the BellmanFord routing algorithm to return the
//Vector of the total distance between each network node and the source node and 
//Vector composed by the predecessor of each node in order to reach the source 
//node in respect with the shortest path for various network sizes.

//Clear display and environment variables
clc
clear all

//Creating a random topology which is tiny in size
n=80;                      //network size is 80
L=1000;                     //network square area side is 1000
dmax=100;                   //locality radius is 100
[g]=NL_T_LocalityConnex(n,L,dmax);  //generation of a random topology in respect with the Locality method. 
i=NL_F_RandInt1n(length(g.node_x)); //selection of the source node
ind=1;                      //window index
g.node_diam(i)=40;          //node diameter
g.node_border(i)=10;        //node border
g.node_color(i)=5;          //node color
[f]=NL_G_ShowGraphN(g,ind);//graph visualization
//Application of the BellmanFord algorithm
for i = 1:30                    //Run 30 iterations
    timer();                    //Initialize timer
    [dist,pred]=NL_R_BellmanFord(g,i);  //application of NL_R_BellmanFord
    A(i) = timer()              //Store timer value in array
end
c=mean(A);                      //Calculate average time taken
disp(c,"Tiny:")                 //Display average time


//Creating a random topology which is small in size
n=90;                      //network size is 90
[g]=NL_T_LocalityConnex(n,L,dmax);  //generation of a random topology in respect with the Locality method. 
i=NL_F_RandInt1n(length(g.node_x)); //selection of the source node
g.node_diam(i)=40;          //node diameter
g.node_border(i)=10;        //node border
g.node_color(i)=5;          //node color
[f]=NL_G_ShowGraphN(g,ind);//graph visualization
//Application of the BellmanFord algorithm
for i = 1:30                    //Run 30 iterations
    timer();                    //Initialize timer
    [dist,pred]=NL_R_BellmanFord(g,i);  //application of NL_R_BellmanFord
    A(i) = timer()              //Store timer value in array
end
c=mean(A);                      //Calculate average time taken
disp(c,"Small:")                 //Display average time


//Creating a random topology which is medium in size
n=120;                      //network size is 120
[g]=NL_T_LocalityConnex(n,L,dmax);  //generation of a random topology in respect with the Locality method. 
i=NL_F_RandInt1n(length(g.node_x)); //selection of the source node
g.node_diam(i)=40;          //node diameter
g.node_border(i)=10;        //node border
g.node_color(i)=5;          //node color
[f]=NL_G_ShowGraphN(g,ind);//graph visualization
//Application of the BellmanFord algorithm
for i = 1:30                    //Run 30 iterations
    timer();                    //Initialize timer
    [dist,pred]=NL_R_BellmanFord(g,i);  //application of NL_R_BellmanFord
    A(i) = timer()              //Store timer value in array
end
c=mean(A);                      //Calculate average time taken
disp(c,"Medium:")                 //Display average time


//Creating a random topology which is large in size
n=150;                      //network size is 150
[g]=NL_T_LocalityConnex(n,L,dmax);  //generation of a random topology in respect with the Locality method. 
i=NL_F_RandInt1n(length(g.node_x)); //selection of the source node
g.node_diam(i)=40;          //node diameter
g.node_border(i)=10;        //node border
g.node_color(i)=5;          //node color
[f]=NL_G_ShowGraphN(g,ind);//graph visualization
//Application of the BellmanFord algorithm
for i = 1:30                    //Run 30 iterations
    timer();                    //Initialize timer
    [dist,pred]=NL_R_BellmanFord(g,i);  //application of NL_R_BellmanFord
    A(i) = timer()              //Store timer value in array
end
c=mean(A);                      //Calculate average time taken
disp(c,"Large:")                 //Display average time


//Creating a random topology which is very large in size
n=180;                      //network size is 180
[g]=NL_T_LocalityConnex(n,L,dmax);  //generation of a random topology in respect with the Locality method. 
i=NL_F_RandInt1n(length(g.node_x)); //selection of the source node
g.node_diam(i)=40;          //node diameter
g.node_border(i)=10;        //node border
g.node_color(i)=5;          //node color
[f]=NL_G_ShowGraphN(g,ind);//graph visualization
//Application of the BellmanFord algorithm
for i = 1:30                    //Run 30 iterations
    timer();                    //Initialize timer
    [dist,pred]=NL_R_BellmanFord(g,i);  //application of NL_R_BellmanFord
    A(i) = timer()              //Store timer value in array
end
c=mean(A);                      //Calculate average time taken
disp(c,"Very Large:")                 //Display average time
