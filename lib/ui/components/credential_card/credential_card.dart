import 'package:flexid_wallet/styles.dart';
import 'package:flutter/material.dart';

class CredentialCard extends StatelessWidget {
  final String _backgroundImageURL;
  final Map<String, String> _details = Map();

  CredentialCard(this._backgroundImageURL);

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
    return Stack(children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width * 0.625,
        margin: EdgeInsets.only(top: 32.0),
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [secondaryColor, primaryColor])),
            ),
            Card(
                color: Colors.transparent,
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5.0,
                margin: EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed("/view");
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                          child: Text('National ID',
                              style: credentialHeadingTextStyle)),
                    ],
                  ),
                )),
          ],
        ),
      ),
    ]);
  }
}
