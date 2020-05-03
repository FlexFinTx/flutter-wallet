import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  DatePicker({Key key, this.selectedDate}) : super(key: key);
  final DateTime selectedDate;

  @override
  DatePickerState createState() {
    return DatePickerState(selectedDate: this.selectedDate);
  }
}

class DatePickerState extends State<DatePicker> {
  DatePickerState({this.selectedDate});

  static const _YEAR = 365;
  final DateTime selectedDate;
  final TextEditingController _birthdateController =
      new TextEditingController();

  Future<Null> _selectDate(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());
    await Future.delayed(Duration(milliseconds: 100));
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now().subtract(Duration(days: _YEAR * 100)),
      lastDate: DateTime.now().add(Duration(days: _YEAR * 10)),
    );
    if (picked != null) {
      setState(() {
        _birthdateController.text = DateFormat("d MMM, yyyy").format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[
      Expanded(
        child: InkWell(
          onTap: () {
            _selectDate(context); // Call Function that has showDatePicker()
          },
          child: IgnorePointer(
            child: new TextFormField(
              controller: _birthdateController,
              decoration: InputDecoration(
                hintText: "Birthdate",
                contentPadding: EdgeInsets.zero,
              ),
              validator: (value) {
                if (value == "") {
                  return "Please select a date";
                }
              },
            ),
          ),
        ),
      )
    ]);
  }
}
