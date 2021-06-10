import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDemo extends StatefulWidget {
  SharedPreferencesDemo();

  @override
  _SharedPreferencesDemoState createState() => _SharedPreferencesDemoState();
}

class _SharedPreferencesDemoState extends State<SharedPreferencesDemo> {
  String _word = "null";

  void _changeWord(String word) {
    setState(() {
      _word = word;
      _saveWord(word);
    });
  }

  void _saveWord(String word) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("WORD", word);
  }

  void _removeWord() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _word = "null";
      prefs.remove("WORD");
    });
  }

  _loadWord() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _word = prefs.getString("WORD") ?? "null";
    });
  }

  @override
  void initState() {
    super.initState();
    _loadWord();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SharedPreferencesDemo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("WORD"),
            Text(
              "$_word",
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () => _changeWord("hoge"),
                  child: Text("hoge"),
                ),
                TextButton(
                  onPressed: () => _changeWord("fuga"),
                  child: Text("fuga"),
                ),
                TextButton(
                  onPressed: () => _changeWord("piyo"),
                  child: Text("piyo"),
                ),
              ],
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
