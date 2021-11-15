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
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
              // VerticalDirection.up을 하면 아래부터 요소가 쌓이게 된다.
              // 위에서 아래로 올라오는걸 생각하면 될듯? (up)
              // verticalDirection: VerticalDirection.down,
              children: <Widget>[
                Container(
                  width: 100,
                  padding: EdgeInsets.all(10),
                  child: Text("Container 1"),
                  // color: Colors.white,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 8,
                            offset: Offset(0, 3))
                      ]),
                ),
                Container(
                    width: 100,
                    color: Colors.blue[100],
                    padding: EdgeInsets.all(10),
                    child: Text("Container 2")),
                Container(
                    width: 100,
                    color: Colors.red[400],
                    padding: EdgeInsets.all(10),
                    child: Text("Container 3")),
              ]),
        ),
      ),
    );
  }
}
