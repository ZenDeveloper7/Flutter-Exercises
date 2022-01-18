import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:spanishaudio/AudioHelper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioCache audioPlayer = AudioCache();
  List<AudioHelper> helperList = [
    AudioHelper("one.wav", Colors.red, "One"),
    AudioHelper("two.wav", Colors.blue, "Two"),
    AudioHelper("three.wav", Colors.green, "Three"),
    AudioHelper("four.wav", Colors.pink, "Four"),
    AudioHelper("five.wav", Colors.brown, "Five"),
    AudioHelper("six.wav", Colors.purple, "Six"),
    AudioHelper("seven.wav", Colors.teal, "Seven"),
    AudioHelper("eight.wav", Colors.orange, "Eight"),
    AudioHelper("nine.wav", Colors.amber, "Nine"),
    AudioHelper("ten.wav", Colors.blueGrey, "Ten"),
  ];

  playAudio(String uri) {
    audioPlayer.play(uri);
  }

  List<Widget> generateColumn() {
    List<Widget> columnList = [];
    columnList.add(Image(
      image: AssetImage(
        "images/logo.png",
      ),
      height: 150,
      width: 150,
    ));
    for (var i = 0; i < 10; i = i + 2) {
      columnList.add(Row(children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 5, 5, 5),
            child: MaterialButton(
              height: 60,
              color: helperList[i].buttonColor,
              onPressed: () {
                playAudio(helperList[i].audioUri);
              },
              child: Text(helperList[i].buttonText,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.fromLTRB(5, 5, 10, 5),
            child: MaterialButton(
              height: 60,
              color: helperList[i + 1].buttonColor,
              onPressed: () {
                playAudio(helperList[i + 1].audioUri);
              },
              child: Text(
                helperList[i + 1].buttonText,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ]));
    }
    return columnList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spanish Audio"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: generateColumn()),
        ),
      ),
    );
  }
}
