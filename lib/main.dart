import 'package:flutter/material.dart';

import 'ui/homepage/homepage.dart';

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
          primaryColor: Color(0xFF39BE84),
          accentColor: Color(0xFFBF3973),
        ),
        home: HomePage());
  }
}
