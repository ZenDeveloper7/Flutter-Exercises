import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage cross = AssetImage('images/cross.png');
  AssetImage circle = AssetImage('images/circle.png');
  AssetImage edit = AssetImage('images/edit.png');

  bool playerOne = true;
  bool gameStarted = false;
  late String message;
  late List<int> gameState;

  @override
  void initState() {
    super.initState();
    setState(() {
      gameState = [-1, -1, -1, -1, -1, -1, -1, -1, -1];
      message = "";
    });
  }

  markIndex(int index) {
    if (gameState[index] == -1 && message.isEmpty) {
      setState(() {
        gameStarted = true;
        if (playerOne)
          gameState[index] = 1;
        else
          gameState[index] = 0;
        playerOne = !playerOne;
        checkWin();
      });
    }
  }

  checkWin() {
    if (gameState[0] != -1 &&
        (gameState[0] == gameState[1]) &&
        (gameState[1] == gameState[2])) {
      setState(() {
        if (gameState[0] == 1)
          message = "Player One Wins";
        else
          message = "Player two Wins";
      });
    } else if (gameState[3] != -1 &&
        (gameState[3] == gameState[4]) &&
        (gameState[4] == gameState[5])) {
      setState(() {
        if (gameState[3] == 1)
          message = "Player One Wins";
        else
          message = "Player two Wins";
      });
    } else if (gameState[6] != -1 &&
        (gameState[6] == gameState[7]) &&
        (gameState[7] == gameState[8])) {
      setState(() {
        if (gameState[6] == 1)
          message = "Player One Wins";
        else
          message = "Player two Wins";
      });
    } else if (gameState[0] != -1 &&
        (gameState[0] == gameState[3]) &&
        (gameState[3] == gameState[6])) {
      setState(() {
        if (gameState[0] == 1)
          message = "Player One Wins";
        else
          message = "Player two Wins";
      });
    } else if (gameState[1] != -1 &&
        (gameState[1] == gameState[4]) &&
        (gameState[4] == gameState[7])) {
      setState(() {
        if (gameState[1] == 1)
          message = "Player One Wins";
        else
          message = "Player two Wins";
      });
    } else if (gameState[2] != -1 &&
        (gameState[2] == gameState[5]) &&
        (gameState[5] == gameState[8])) {
      setState(() {
        if (gameState[2] == 1)
          message = "Player One Wins";
        else
          message = "Player two Wins";
      });
    } else if (gameState[0] != -1 &&
        (gameState[0] == gameState[4]) &&
        (gameState[4] == gameState[8])) {
      setState(() {
        if (gameState[0] == 1)
          message = "Player One Wins";
        else
          message = "Player two Wins";
      });
    } else if (gameState[2] != -1 &&
        (gameState[2] == gameState[4]) &&
        (gameState[4] == gameState[6])) {
      setState(() {
        if (gameState[2] == 1)
          message = "Player One Wins";
        else
          message = "Player two Wins";
      });
    } else if (!gameState.contains(-1)) {
      setState(() {
        message = "Game Draw";
      });
    }
  }

  AssetImage getImage(int value) {
    if (value == 1)
      return cross;
    else if (value == 0)
      return circle;
    else
      return edit;
  }

  resetGame() {
    setState(() {
      gameState = [-1, -1, -1, -1, -1, -1, -1, -1, -1];
      message = "";
      gameStarted = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic Tac Toe"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.all(20),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.0,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: gameState.length,
                  itemBuilder: (context, index) => SizedBox(
                        width: 100,
                        height: 100,
                        child: MaterialButton(
                          onPressed: () {
                            markIndex(index);
                          },
                          child: Image(image: getImage(gameState[index])),
                        ),
                      ))),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              message,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
           if(gameStarted) Container(
            margin: EdgeInsets.all(20),
            child: MaterialButton(
            color: Colors.green,
            child: Text(
              "Reset Game" ,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            minWidth: 300,
            height: 50,
            onPressed: resetGame,
          )
          ),
        ],
      ),
    );
  }
}
