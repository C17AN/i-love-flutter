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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                    radius: 75,
                    // backgroundColor: Colors.blue[50],
                    backgroundImage: AssetImage('images/profile.png')

                    // Q. AssetImage 타입과 Image.asset 타입의 차이는 무엇인가?
                    // child: Image.asset('images/profile.png'),
                    ),
                Column(children: <Widget>[
                  Text(
                    "Chanmin, Kim",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontFamily: "IBMPlexSans",
                    ),
                  ),
                  Text(
                    "Web / Client Developer",
                    style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w400,
                        color: Colors.blue[400],
                        letterSpacing: 1.2),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 3,
                          spreadRadius: 2,
                          offset: Offset(5, 3),
                        )
                      ],
                      color: Colors.white70,
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.accessibility_new,
                          color: Colors.blueGrey[400],
                          size: 28,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                          child: Text(
                            "안녕하세요, 찬민입니다!",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: ListTile(
                        leading: Icon(
                          Icons.airplanemode_on_rounded,
                          size: 36,
                        ),
                        title: Text('클라이언트 개발자가 되고자 합니다.'),
                        subtitle: Text("주요 스택 : Flutter, Javascript"),
                      ))
                ]),
              ]),
        ),
      ),
    );
  }
}
