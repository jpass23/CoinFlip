# Coin Flip

A friend of mine had an idea for a puzzle game where the player controls a "coin" that is a certain color in a maze of colored rooms. The objective is to get to the green room at the bottom without entering a room that is the same color as you. This is the implimentation of an example level for such a game.

## Screenshots:
<div align=left>

<img src="https://raw.githubusercontent.com/jpass23/CoinFlip/main/Screenshots/Level%201.png" alt="drawing" width="200"/>

</div>

## Description

There is only one level coded right now. The objective is to use the arrow keys to control the "coin" and get to the green square. Whenever you cross from one room into another, the coin you are controlling flips over. If it is blue, it flips to red and if it is red, it flips to blue. However, you cannot end up in a room that is the same color as you. For example, in the above screenshot, the player cannot move into the red room because doing so would cause the coin to flip to red and then the player would be red in a red room. 

It may seem complicated but give it a go! The best way is to run "CoinFlip.pde" but if you don't have Processing installed, there are closed source versions for Apple Silicon, Apple Intel, and Windows all in the "Closed Source" folder. You will however need to have OpenJDK installed for the latter method since embedding Java made the files too large to put on github. 


## Design Structure

This doesn't use any particular design pattern besides an object oriented programming structure.
