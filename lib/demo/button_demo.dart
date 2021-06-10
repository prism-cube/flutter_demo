import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ButtonDemo"),
        ),
        body: Center(
            child: TextButton(
          onPressed: () => {print("ボタンがおされたよ")},
          child: Text("Button"),
        )));
  }
}
