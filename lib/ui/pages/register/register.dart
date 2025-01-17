import 'package:flutter/material.dart';
import 'package:flexid_wallet/styles.dart';
import 'package:flexid_wallet/ui/components/background/background.dart';
import 'package:flexid_wallet/ui/components/register_form/register_form.dart';
import 'package:flutter/services.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      statusBarColor: primaryColor,
    ));
    return Scaffold(
        resizeToAvoidBottomPadding: false,
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
                              "Flex Digital Identity Wallet",
                              style: fadedTextStyle,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 50.0),
                        child: Center(
                          child: Text(
                            "Register",
                            style: whiteHeadingTextStyle,
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Row(
                          children: <Widget>[RegisterForm()],
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
