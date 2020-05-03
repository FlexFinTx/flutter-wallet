import 'package:flutter/material.dart';

class FlexButton extends StatelessWidget {
  final String _buttonText;
  final Color _buttonColor;
  final Function() _onPressed;

  FlexButton(this._buttonText, this._buttonColor, this._onPressed);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        this._buttonText,
        style: TextStyle(fontSize: 18.0),
      ),
      color: this._buttonColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.white)),
      textColor: Colors.white,
      onPressed: this._onPressed,
    );
  }
}
