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

class DicePage extends StatelessWidget {
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
              child: Image.asset("images/dice2.png"),
              // child: Image(
              //   image: AssetImage('images/dice2.png'),
              // ),
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            Expanded(
              child: Image(
                image: AssetImage('images/dice2.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
