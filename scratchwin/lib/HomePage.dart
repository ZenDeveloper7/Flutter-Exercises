import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage circle = AssetImage('images/circle.png');
  AssetImage happy = AssetImage('images/rupee.png');
  AssetImage sad = AssetImage('images/sadFace.png');

  late List<int> itemArray;
  late int luckyNumber;
  late int counter;

  @override
  void initState() {
    super.initState();
    itemArray = List<int>.generate(10, (index) => -1);
    counter = 0;
    generateRandomNumber();
  }

  generateRandomNumber() {
    var random = Random().nextInt(10);
    setState(() {
      luckyNumber = random;
    });
  }

  scratch(int index) {
    counter++;
    if (counter > 5) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Limit Exceeded"),
      ));
    } else {
      if (luckyNumber == index) {
        setState(() {
          itemArray[index] = 1;
        });
      } else {
        setState(() {
          itemArray[index] = 0;
        });
      }
    }
  }

  AssetImage getImage(int index) {
    int currentState = itemArray[index];
    if (currentState == 1) {
      return happy;
    } else if (currentState == 0) {
      return sad;
    } else {
      return circle;
    }
  }

  showAll() {
    setState(() {
      itemArray = List<int>.filled(10, 0);
      itemArray[luckyNumber] = 1;
    });
  }

  resetGame() {
    setState(() {
      itemArray = List<int>.filled(10, -1);
      counter = 0;
    });
    generateRandomNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scratch and Win"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      childAspectRatio: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: itemArray.length,
                  itemBuilder: (context, index) => SizedBox(
                        width: 50,
                        height: 50,
                        child: ElevatedButton(
                          child: Image(
                            image: getImage(index),
                          ),
                          onPressed: () {
                            scratch(index);
                          },
                          style:
                              ElevatedButton.styleFrom(primary: Colors.white),
                        ),
                      ))),
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: showAll,
              child: Text("Show All"),
              style: ElevatedButton.styleFrom(primary: Colors.purple),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: resetGame,
              child: Text("Reset"),
              style: ElevatedButton.styleFrom(primary: Colors.purple),
            ),
          ),
        ],
      ),
    );
  }
}
