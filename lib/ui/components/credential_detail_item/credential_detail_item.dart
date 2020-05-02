import 'package:flexid_wallet/styles.dart';
import 'package:flutter/material.dart';

class CredentialDetailItem extends StatelessWidget {
  final String _key;
  final String _value;

  CredentialDetailItem(this._key, this._value);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0x40F2F2F2), borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: Text(
            this._key,
            style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
          ),
          trailing: Text(
            this._value,
            textAlign: TextAlign.left,
            style: TextStyle(color: accentColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
