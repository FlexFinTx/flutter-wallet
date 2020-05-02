import 'package:flutter/material.dart';
import 'package:flexid_wallet/ui/components/background/background.dart';

class ReceiveCredential extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(
          children: <Widget>[
            PageBackground(
              screenHeight: MediaQuery.of(context).size.height,
            ),
          ],
        ));
  }
}
