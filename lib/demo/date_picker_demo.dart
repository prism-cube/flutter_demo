import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class DatePickerDemo extends StatefulWidget {
  DatePickerDemo();

  @override
  _DatePickerDemoState createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime _date = new DateTime(1996, 7, 17);

  void _saveData(DateTime date) {
    setState(() {
      _date = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePickerDemo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(DateFormat('yyyy/MM/dd').format(_date)),
            IconButton(
              icon: Icon(FontAwesomeIcons.calendarAlt,
                  color: Colors.white, size: 30.0),
              onPressed: () {
                DatePicker.showDatePicker(context,
                    showTitleActions: true,
                    minTime: DateTime(1900, 1, 1),
                    maxTime: DateTime(2049, 12, 31), onConfirm: (date) {
                  _saveData(date);
                }, currentTime: _date, locale: LocaleType.jp);
              },
            ),
          ],
        ),
      ),
    );
  }
}
