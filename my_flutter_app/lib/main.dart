import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('I am Rich!'),
            backgroundColor: Colors.blueGrey,
          ),
          backgroundColor: Colors.blueGrey,
          body: const Center(
            child: Image(
              image: NetworkImage(
                  'https://news.mit.edu/sites/default/files/images/202010/MIT-Metallic-Diamond-01-Press.jpg'),
            ),
          ),
        ),
      ),
    );
