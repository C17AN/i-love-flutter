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
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Text("Container 1"),
                width: 100,
                color: Colors.red,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text("Container 2"),
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                    ),
                    Container(
                      child: Text("Container 3"),
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    ),
                  ]),
              Container(
                child: Text("Container 4"),
                width: 100,
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
