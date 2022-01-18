import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage('images/one.png');
  AssetImage two = AssetImage('images/two.png');
  AssetImage three = AssetImage('images/three.png');
  AssetImage four = AssetImage('images/four.png');
  AssetImage five = AssetImage('images/five.png');
  AssetImage six = AssetImage('images/six.png');

  late AssetImage defaultImage;

  @override
  void initState() {
    super.initState();
    setState(() {
      defaultImage = one;
    });
  }

  rollDice() {
    var random = (1 + Random().nextInt(6));
    setState(() {
      switch (random) {
        case 1:
          defaultImage = one;
          break;
        case 2:
          defaultImage = two;
          break;
        case 3:
          defaultImage = three;
          break;
        case 4:
          defaultImage = four;
          break;
        case 5:
          defaultImage = five;
          break;
        case 6:
          defaultImage = six;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller App"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: defaultImage,
                width: 150,
                height: 150,
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: ElevatedButton(
                child: Text("Roll Dice"),
                onPressed: rollDice,
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero
                    )
                  )
                ),
              ),
              )
            
            ],
          ),
        ),
      ),
    );
  }
}
