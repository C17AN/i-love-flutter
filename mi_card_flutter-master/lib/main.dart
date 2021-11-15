import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        body: SafeArea(
          child: Column(children: <Widget>[
            CircleAvatar(
                radius: 75,
                // backgroundColor: Colors.blue[50],
                backgroundImage: AssetImage('images/profile.png')

                // Q. AssetImage 타입과 Image.asset 타입의 차이는 무엇인가?
                // child: Image.asset('images/profile.png'),
                ),
          ]),
        ),
      ),
    );
  }
}
