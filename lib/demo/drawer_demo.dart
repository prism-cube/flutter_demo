import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DrawerDemo")),
      drawer: Drawer(child: Center(child: Text("Drawer"))),
      body: Text("テキスト"),
    );
  }
}
