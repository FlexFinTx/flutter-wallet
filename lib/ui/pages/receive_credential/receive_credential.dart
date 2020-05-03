import 'package:flexid_wallet/styles.dart';
import 'package:flexid_wallet/ui/components/credential_details/credential_details.dart';
import 'package:flexid_wallet/ui/components/flex_button/flex_button.dart';
import 'package:flexid_wallet/ui/components/receive_credential_title/receive_credential_title.dart';
import 'package:flutter/material.dart';
import 'package:flexid_wallet/ui/components/background/background.dart';

class ReceiveCredential extends StatelessWidget {
  final Map<String, String> _details = Map();

  @override
  Widget build(BuildContext context) {
    _details["ID"] = "1234567890";
    _details["Name"] = "Haardik";
    _details["Date of Birth"] = "21 May, 1999";
    _details["Age"] = "21";
    _details["Address"] = "123 St, XYZ Avenue, Waterloo, Canada";
    _details["ABC"] = "XYZ";
    _details["ABC6"] = "XYZ";
    _details["ABC5"] = "XYZ";
    _details["ABC4"] = "XYZ";
    _details["ABC3"] = "XYZ";
    _details["ABC2"] = "XYZ";
    _details["ABC1"] = "XYZ";
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
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
                            "Receive",
                            style: whiteHeadingTextStyle,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32.0),
                          child: ReceiveCredentialTitle("CBZ", "National ID"),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  CredentialDetails(_details),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20.0),
                                    child: ButtonTheme(
                                      height: 50.0,
                                      child: FlexButton(
                                          "Reject", accentColor, null),
                                    ),
                                  )),
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20.0),
                                    child: ButtonTheme(
                                      height: 50.0,
                                      child: FlexButton(
                                          "Accept", primaryColor, null),
                                    ),
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
