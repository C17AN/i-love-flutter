import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 80;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd4e7ff),
      appBar: AppBar(
        title: Text('비만도 계산기'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    colour: Color(0xFFf7fffb),
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.male,
                      text: "남성",
                      iconColor: Colors.blue[600],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      colour: Color(0xFFf7fffb),
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.female,
                          iconColor: Colors.pink[200],
                          text: "여성")),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: ReusableCard(
              colour: Color(0xFFf7fffb),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFFf7fffb),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFFf7fffb),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xffabceff),
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
