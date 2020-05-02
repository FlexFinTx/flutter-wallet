import 'package:flutter/material.dart';
import 'dart:async';

class FlexGreenButton extends StatelessWidget {
  final Widget _redirectTo;
  final String _buttonText;

  FlexGreenButton(this._buttonText, this._redirectTo);

  void showSimpleCustomDialog(BuildContext context) {
    WillPopScope simpleDialog = WillPopScope(
        onWillPop: () async => false,
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
              height: 100,
              width: 100,
              child: Center(child: CircularProgressIndicator())),
        ));
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) => simpleDialog);
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        this._buttonText,
        style: TextStyle(fontSize: 18.0),
      ),
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.white)),
      textColor: Colors.white,
      onPressed: () {
        // Validate returns true if the form is valid, or false
        // otherwise.
        showSimpleCustomDialog(context);
        Timer(Duration(seconds: 5), () {
          Navigator.of(context).pop();
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => this._redirectTo));
        });
      },
    );
  }
}