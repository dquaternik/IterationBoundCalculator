These functions implement two algorithms for finding the iteration bound of 
a given data flow graph (DFG). All you need is the number of delays and a Longest Path Matrix.
The algorithms are coded such that they should work up to any number 
of delays. Implementation is done to match the original algorithms and do not incorporate
computational efficiency gains that can be added by restricting number of delays to powers
of 2. 

LPath.m implements the Longest Path Matrix algorithm. l1 is the first level
graph matrix. All others are generated from it. d is the number of delay units.
tinf, the iteration bound in unit time is passed out. 

MCM.m calculates the Minimum Cycle Mean for a graph. Wb(i,j) is
the matrix that has weight of edge. From node is i, to node is j. Wb is 
the same as L1 from LPM algo, substituting 'inf' for -1 and flipping the   
signs on all valid paths. d is the number of delays in the graph. 1st   
node is always taken as reference. tinf, the iteration bound in unit time
is passed out. 

HW1.m demonstrates functionality of both algorithms for 4 different DFGs. These
examples show data graphs for up to 8 delays and can be edited for testing others. 