import 'package:flexid_wallet/styles.dart';
import 'package:flutter/material.dart';

class ReceiveCredentialTitle extends StatelessWidget {
  final String _issuerOrganization;
  final String _credentialName;

  ReceiveCredentialTitle(this._issuerOrganization, this._credentialName);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: whiteBodyTextStyle,
        children: <TextSpan>[
          TextSpan(
              text: "${this._issuerOrganization} ",
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: "wants to issue you a "),
          TextSpan(
              text: "${this._credentialName} ",
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: "credential"),
        ],
      ),
    );
  }
}
