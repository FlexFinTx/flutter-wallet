import 'package:flexid_wallet/styles.dart';
import 'package:flutter/material.dart';

class FlexListTile extends StatelessWidget {
  final String _leftText;
  final String _rightText;

  FlexListTile(this._leftText, this._rightText);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              this._leftText,
              style:
                  TextStyle(color: secondaryColor, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Text(
                this._rightText,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                maxLines: 5,
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
