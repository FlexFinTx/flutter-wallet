import 'package:flexid_wallet/styles.dart';
import 'package:flexid_wallet/ui/pages/homepage/homepage.dart';
import 'package:flexid_wallet/ui/pages/receive_credential/receive_credential.dart';
import 'package:flexid_wallet/ui/pages/register/register.dart';
import 'package:flexid_wallet/ui/pages/view_credential/view_credential.dart';
import 'package:flutter/material.dart';

import 'ui/pages/homepage/homepage.dart';
import 'ui/pages/homepage/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FlexID Wallet',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Color(0xFFFFFFFF),
            primaryColor: primaryColor,
            accentColor: accentColor,
            fontFamily: "ProductSans"),
        home: HomePage(),
        routes: <String, WidgetBuilder>{
          "/homepage": (BuildContext context) => HomePage(),
          "/register": (BuildContext context) => Register(),
          "/receive": (BuildContext context) => ReceiveCredential(),
          "/view": (BuildContext context) => ViewCredential(),
        });
  }
}
