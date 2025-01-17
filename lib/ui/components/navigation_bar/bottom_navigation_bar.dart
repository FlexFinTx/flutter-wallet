import 'package:flutter/material.dart';
import 'dart:async';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:flexid_wallet/ui/components/receive_credential_title/receive_credential_title.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() {
    return _BottomNavigationState();
  }
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 1;
  var result = null;
  Future _scanQR() async {
    var qrResult;
    if (result == null) _currentIndex = 1;
    qrResult = await scanner.scan();

    setState(
      () {
        result = qrResult;
        _currentIndex = 0;
        // if (result != null) {
        //             print("\n\n\n\n\n\n\n\n\n\n\\n\n\n\nHelloooo\n\n\n\n\n\n\n\n\\n\n");
        //             Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) {
        //                     return ReceiveCredentialTitle('xyz',result);
        //                   },
        //                 ));
        //           }
        
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text('Add ID'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dehaze),
              title: Text('Settings'),
            ),
          ],
          onTap: (index) {
            setState(
              () {
                _currentIndex = index;

                if (_currentIndex == 0) {
                  result = null;
                  _scanQR();
                } else {
                  result = null;
                }
              },
            );
          },
        ),
      ),
    );
  }
}
