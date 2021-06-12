import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flash/flash.dart';

class FlashDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FlashDemo"),
        ),
        body: ListView(children: [
          _listItem("Success Bar",
              () => context.showSuccessBar(content: Text('I succeeded!'))),
          _listItem(
              "Information Bar",
              () => context.showInfoBar(
                  content: Text('Place information here!'))),
          _listItem("Error Bar",
              () => context.showErrorBar(content: Text('Place error here!'))),
          _listItem("Block Dialog", () {
            var completer = Completer();
            Future.delayed(Duration(seconds: 5))
                .then((_) => completer.complete());
            context.showBlockDialog(
              dismissCompleter: completer,
            );
          }),
        ]));
  }

  Widget _listItem(String title, void Function() onTapFunction) {
    return Container(
      decoration:
          new BoxDecoration(border: new Border(bottom: BorderSide(width: 1.0))),
      child: ListTile(
        title: Text(title),
        onTap: onTapFunction,
      ),
    );
  }
}
