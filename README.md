# Conway's Game of Life
## History
<div  class=text-justify>
The Game of Life was invented in 1970 by the British mathematician John Horton Conway. Conway developed an interest in a problem which was made evident in the 1940’s by mathematician John von Neumann, who aimed to find a hypothetical machine that had the ability to create copies of itself and was successful when he discovered a mathematical model for such a machine with very complicated rules on a rectangular grid. Thus, the Game of Life was Conway’s way of simplifying von Neumann’s ideas. It is the best-known example of a cellular automaton which is any system in which rules are applied to cells and their neighbors in a regular grid. Martin Gardner popularized the Game of Life by writing two articles for his column “Mathematical Games” in the journal Scientific American in 1970 and 1971.
</div>

## Rules

* Any live cell with fewer than two live neighbours dies, as if caused by under-population.

* Any live cell with two or three live neighbours lives on to the next generation.

* Any live cell with more than three live neighbours dies, as if by overcrowding.

* Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

## How play

This is a Ruby implementation of Conway's Game of Life.

All you need is run de program in your terminal in the code you could change the variables like:

Generation :This variable determines the cycles of the game
Board_size : This variable determines the size of the board

