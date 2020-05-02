import 'package:flexid_wallet/ui/components/datepicker/datepicker.dart';
import 'package:flexid_wallet/ui/pages/receive_credential/receive_credential.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class RegisterForm extends StatefulWidget {
  @override
  RegisterFormState createState() {
    return RegisterFormState();
  }
}

class RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  DateTime _date = DateTime.now();
  bool _loadingVisible = false;

  toggleLoading() {
    if (_loadingVisible) {
      setState(() {
        _loadingVisible = false;
      });
    } else {
      setState(() {
        _loadingVisible = true;
      });
    }
  }

  void showSimpleCustomDialog(BuildContext context) {
    WillPopScope simpleDialog = WillPopScope(
        onWillPop: () async => false,
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
              height: 100,
              width: 100,
              child: Center(child: CircularProgressIndicator())),
        ));
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) => simpleDialog);
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
        width: MediaQuery.of(context).size.width,
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.number,
                maxLength: 10,
                decoration: InputDecoration(
                  hintText: "National ID",
                  contentPadding: EdgeInsets.zero,
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter National ID';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 14,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Last Name",
                  contentPadding: EdgeInsets.zero,
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter Last Name';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 32,
              ),
              DatePicker(
                selectedDate: _date,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ButtonTheme(
                  minWidth: 200.0,
                  height: 50.0,
                  child: FlatButton(
                    child: Text(
                      'Submit',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    color: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white)),
                    textColor: Colors.white,
                    onPressed: () {
                      // Validate returns true if the form is valid, or false
                      // otherwise.
                      if (_formKey.currentState.validate()) {
                        showSimpleCustomDialog(context);
                        Timer(Duration(seconds: 5), () {
                          Navigator.of(context).pop();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ReceiveCredential()));
                        });
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
