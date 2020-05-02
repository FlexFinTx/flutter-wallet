import 'package:flexid_wallet/styles.dart';
import 'package:flexid_wallet/ui/components/receive_credential_title/receive_credential_title.dart';
import 'package:flutter/material.dart';
import 'package:flexid_wallet/ui/components/background/background.dart';

class ReceiveCredential extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                          height: 32.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32.0),
                          child: ReceiveCredentialTitle("CBZ", "National ID"),
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
          )),
    );
  }
}
