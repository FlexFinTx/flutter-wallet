import 'package:flexid_wallet/styles.dart';
import 'package:flexid_wallet/ui/components/background/background.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        PageBackground(
          screenHeight: MediaQuery.of(context).size.height,
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "John Doe",
                          style: fadedTextStyle,
                        ),
                        Spacer(),
                        Icon(Icons.person_outline,
                            color: Color(0x99FFFFFF), size: 30),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      "Credentials",
                      style: whiteHeadingTextStyle,
                    ),
                  ),
                  SingleChildScrollView(
                    child: Row(
                      children: <Widget>[],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
