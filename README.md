![](https://img.shields.io/badge/Microverse-blueviolet)

# Tic Tac Toe

> This project is about building a tic-tac-toe game for two manual players

This project was divided into four milestones
- __Project setup__ : This took care of the project directories and files organization
- __User Interface__ : This part of the project handled the game UI interactions with the player(s)
displaying relevant instructions and messages based to the game logic outcome.
- __Game logic__ : This section of the project implemented the overall game-logic using OOP in ruby
- __Player Instruction__ : This part of the project provided the readme which contains a complete user guide or player instruction(s) for those who want to play the game.
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
- - __```Player One```__ should enter a name
- - __```Player two```__ should also enter a name
- - __```Player One```__ is assigned the symbol __```X```__
- - __```Player One```__ is assigned the symbol __```O```__
- Each player  is then  asked to enter a cell location from the grid displayed on the user Interface
- There are __nine (9)__ accepted values

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
- Any __valid__ cell location chosen by a player will be marked with the player's symbol __```X```__ or __```O```__
- - If player one enters cell location __```a1```__ we get
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
- - If player two enters cell location __```b2```__ we get
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
- - cell locations __```a1```__ and __```b2```__ are occupied and cannot be chosen again by either player
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
- The first player to match __three successive cells__ either _horizontally_, _vertically_, or _diagonally_ has won the game
- - __```Player One```__ has won (_Diagonal_)
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

- - __```Player Two```__ has won (_Vertical_)
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
- If the entire board gets filled up and no player has _three (3) successive cells_, the game is a __tie__
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
- At the end of the game, the player is asked to enter: __```p```__ to _play again_ or any other key to _exit_ the game
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
