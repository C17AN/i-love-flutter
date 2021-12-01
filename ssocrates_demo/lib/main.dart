import 'package:flutter/material.dart';
import 'package:ssocrates_demo/webview_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ssocrates Demo',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  WebviewWrapper webView = const WebviewWrapper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: webView),
    );
  }
}
