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
                      color: Colors.white,
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.emoji_events,
                          color: Colors.white,
                          size: 28,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                          child: Text(
                            "Father of Flutter",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  )
                ]),
              ]),
        ),
      ),
    );
  }
}
