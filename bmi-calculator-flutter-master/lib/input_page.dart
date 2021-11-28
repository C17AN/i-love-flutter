import 'package:bmi_calculator/components/rounded_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum GenderType { MALE, FEMALE }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInActiveColor;
  Color femaleCardColor = kInActiveColor;
  num height = 180.0;
  num weight = 50.0;
  var selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd4e7ff),
      appBar: AppBar(
        title: Text('비만도 계산기'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onTap: () =>
                        setState(() => selectedGender = GenderType.MALE),
                    colour: selectedGender == GenderType.MALE
                        ? kActiveColor
                        : kInActiveColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.male,
                      text: "남성",
                      iconColor: Colors.blue[600],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      onTap: () =>
                          setState(() => selectedGender = GenderType.FEMALE),
                      colour: selectedGender == GenderType.FEMALE
                          ? kActiveColor
                          : kInActiveColor,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.female,
                          iconColor: Colors.pink[200],
                          text: "여성")),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ReusableCard(
              colour: Color(0xFFf7fffb),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '키',
                    style: kLabelTextStyle,
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toInt().toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    // 과거에는 SliderThemeData의 모든 속성이 required였지만, of.copyWith() 문법을 사용해
                    // 특정한 속성만을 교체할 수 있음.
                    data: SliderTheme.of(context).copyWith(
                      overlayColor: Color(0x29EB1555),
                    ),
                    // data: SliderThemeData(
                    //   overlayColor: Color(0x29EB1555),
                    //   overlayShape:
                    //       RoundSliderOverlayShape(overlayRadius: 15),
                    child: Slider(
                      value: height,
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double value) {
                        setState(() => height = value);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kInActiveColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "몸무게",
                          style: kLabelTextStyle,
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text('kg', style: kLabelTextStyle),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                              onPress: () {},
                              icon: Icon(Icons.add),
                            ),
                            SizedBox(width: 10),
                            RoundedIconButton(
                              onPress: () {},
                              icon: Icon(Icons.remove),
                            ),
                          ],
                        ),
                      ],
                    ),
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
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}
