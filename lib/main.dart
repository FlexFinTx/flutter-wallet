import 'package:flexid_wallet/styles.dart';
import 'package:flexid_wallet/ui/pages/register/register.dart';
import 'package:flutter/material.dart';

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
        // home: Register());
        home: HomePage());
  }
}
