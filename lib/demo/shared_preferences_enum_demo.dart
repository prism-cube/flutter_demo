import 'package:flutter/material.dart';
import 'package:hello_world/constants/metasyntactic.dart';
import 'package:hello_world/data/local_storage.dart';

class SharedPreferencesEnumDemo extends StatefulWidget {
  SharedPreferencesEnumDemo();

  @override
  _SharedPreferencesEnumDemoState createState() =>
      _SharedPreferencesEnumDemoState();
}

class _SharedPreferencesEnumDemoState extends State<SharedPreferencesEnumDemo> {
  String _word = "null2";

  void _changeWord(String word) {
    setState(() {
      _word = word;
    });
    _saveWord(word);
  }

  void _saveWord(String word) async {
    LocalStorage.meta.setString(word);
  }

  void _removeWord() async {
    setState(() {
      _word = "null";
    });
    LocalStorage.meta.remove();
  }

  _loadWord() async {
    setState(() {
      LocalStorage.meta.getString(defaultValue: "null").then((value) {
        _word = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();

    Future(() async {
      await _loadWord();
    });
  }

  List<Widget> _createButtons() {
    List<Widget> buttons = <Widget>[];
    Metasyntactic.values.forEach((value) {
      buttons.add(TextButton(
        onPressed: () => _changeWord(value.name),
        child: Text(value.name),
      ));
    });
    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SharedPreferencesEnumDemo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Metasyntactic"),
            Text(
              "$_word",
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _createButtons(),
            ),
            TextButton(
              onPressed: _removeWord,
              child: Text("remove"),
            ),
          ],
        ),
      ),
    );
  }
}
