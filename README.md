![](https://img.shields.io/badge/Microverse-blueviolet)

# Tic Tac Toe

> This project is about building a tic-tac-toe game for two manual players

![screenshot](./app_screenshot.png)

This project was divided into four main milestones
- Project setup : This took care of the project directories and files organization
- User Interface : This part of the project handled the game UI interactions with the player(s)
displaying relevant instructions and messages based to the game logic outcome.
- Game logic : This section of the project implemented the overall game-logic using OOP in ruby
- Player Instruction : This part of the project provided the readme which contains a complete user guide or player instruction(s) for those who want to play the game.
## Built With

- Ruby


## Live Demo

[Live Demo Link](https://repl.it/@MisoriSimon/tic-tac-toe-ruby#main.rb)


## Getting Started
You can either play this code via the [Live Demo Link](https://repl.it/@MisoriSimon/tic-tac-toe-ruby#main.rb) or get a local copy

To get a local copy up and running follow these simple example steps.



### Prerequisites
- Ruby : you need ruby installed on your local pc

### Setup

```
git clone https://github.com/Misori-simon/tic-tac-toe.git
```

```
cd tic-tac-toe
```

```
cd bin
```

```
ruby main.rb
```
### Game Describtion
Tic-tac-toe is a game for two players, X and O, who take turns marking the spaces in a 3×3 grid. The player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row is the winner. It is a solved game with a forced draw assuming best play from both players.

### PLAYER INSTRUCTIONS FOR TIC-TAC-TOE GAME
- The game requires two players
- Upon running the main.rb file either through the live demo link or locally:
- - ```Player One``` should enter a name
- - ```Player two``` should also enter a name
- ```Player One``` is assigned the symbol ```X```
- ```Player One``` is assigned the symbol ```O```
- Each player  is then  asked to enter a cell location from the grid displayed on the user Interface
- There are nine (9) accepted values

```
    1    2    3
  ________________
A | a1 | a2 | a3 |
  -----+----+-----
B | b1 | b2 | b3 |
  -----+----+-----
C | c1 | c2 | c3 |
  ----------------
```
- Any valid cell location chosen by a player will be marked with e player's symbol ```X``` or ```O```
- - If player one enters cell location ```a1``` we get
```
    1    2    3
  ________________
A | X  |    |    |
  -----+----+-----
B |    |    |    |
  -----+----+-----
C |    |    |    |
  ----------------
```
- - If player two enters cell location ```b2``` we get
```
    1    2    3
  ________________
A | X  |    |    |
  -----+----+-----
B |    | O  |    |
  -----+----+-----
C |    |    |    |
  ----------------
```
- Player(s) cannot enter a location that is already occupied
- - cell locations ```a1``` and ```b2``` are occupied and cannot be chosen again by either player
```
    1    2    3
  ________________
A | X  |    |    |
  -----+----+-----
B |    | O  |    |
  -----+----+-----
C |    |    |    |
  ----------------
```
- The first player to match three successive cells either horizontally, vertically, or diagonally has won the game
- - ```Player One``` has won (Diagonal)
```
    1    2    3
  ________________
A | X  | O  | X  |
  -----+----+-----
B | O  | X  | O  |
  -----+----+-----
C | O  | O  | X  |
  ----------------
```

- - ```Player Two``` has won (Vertical)
```
    1    2    3
  ________________
A | O  | O  | X  |
  -----+----+-----
B | O  | X  | O  |
  -----+----+-----
C | O  | X  | X  |
  ----------------
```
- If the entire board gets filled up and no player has three (3) successive cells, the game is a tie
```
    1    2    3
  ________________
A | X  | O  | X  |
  -----+----+-----
B | X  | O  | O  |
  -----+----+-----
C | O  | X  | X  |
  ----------------
```
- The the end of the game, the player is asked to enter: ```p``` to play again or any other key to exit the game
- Thanks for playing the game
## Authors

👤 **Silas Kalu**

- GitHub: [@cyonii](https://github.com/cyonii)
- Twitter: [@theOnuoha](https://twitter.com/theOnuoha)
- LinkedIn: [Silas Kalu](https://www.linkedin.com/in/silas-kalu-2a9a13199/)


👤 **Misori Simon**

- GitHub: [Misori-simon](https://github.com/Misori-simon/)
- Twitter: [@misori_simon](https://twitter.com/misori_simon)
- LinkedIn: [Misori Simon](https://cm.linkedin.com/in/misori-simon-05906219b)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Wikipedia  for providing information about the tic-tac-toe game. [read](https://en.wikipedia.org/wiki/Tic-tac-toe)
