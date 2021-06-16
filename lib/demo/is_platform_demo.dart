import 'package:flutter/material.dart';
import 'dart:io';

class IsPlatformDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IsPlatformDemo"),
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Platform is"),
          if (Platform.isIOS) ...{
            Text("iOS"),
          } else if (Platform.isAndroid) ...{
            Text("Android"),
          }
        ],
      )),
    );
  }
}
