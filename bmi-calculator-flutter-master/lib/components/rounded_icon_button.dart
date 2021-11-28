import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({this.icon, this.onPress});

  Icon icon;
  Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0,
      constraints: BoxConstraints.tightFor(width: 36.0, height: 36.0),
      child: icon,
      onPressed: onPress,
      fillColor: Colors.blue[200],
      shape: CircleBorder(
        side: BorderSide(width: 1, color: Colors.blue[100]),
      ),
    );
  }
}
