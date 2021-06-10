import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FloatingActionButtonDemo")),
      floatingActionButton: FloatingActionButton(
          onPressed: () => {print("押したね？")}, child: Icon(Icons.timer)),
    );
  }
}
