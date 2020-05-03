import 'package:flexid_wallet/ui/components/background/clippers.dart';
import 'package:flutter/material.dart';

class PageBackground extends StatelessWidget {
  final screenHeight;
  const PageBackground({Key key, @required this.screenHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return ClipPath(
      clipper: BottomShapeClipper(),
      child: Container(
        height: screenHeight * 0.33,
        color: themeData.primaryColor,
      ),
    );
  }
}
