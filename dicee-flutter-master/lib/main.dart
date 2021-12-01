import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[700],
        appBar: AppBar(
          title: Text('주사위 게임'),
          backgroundColor: Colors.blue[600],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int rightDice = 1;
  int leftDice = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            // Image.asset('images/dice1.png'),
            Expanded(
              // Image.asset은 내부적으로 AssetImage ImageProvider를 사용하는 방식을 간결하게 지원하는 위젯이다.
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftDice = Random().nextInt(6) + 1;
                  });
                  print("left Dice Clicked, $leftDice");
                },
                child: Image.asset("images/dice$leftDice.png"),
              ),
              // child: Image(
              //   image: AssetImage('images/dice2.png'),
              // ),
            ),
            SizedBox(
              height: 20,
              width: 10,
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  print('Right button pressed');
                  setState(() {
                    rightDice = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$rightDice.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
