import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // key는 위젯 트리 내에서 변화하는 위젯의 상태를 추적하는데 사용된다.
  // 그러나 실제로 필요한 경우는 별로 없다 한다!
  // const ReusableCard({
  //   Key key,
  // }) : super(key: key);
  ReusableCard({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.all(20),
    );
  }
}
