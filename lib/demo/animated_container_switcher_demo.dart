import 'package:flutter/material.dart';

class AnimatedContainerSwitcherDemo extends StatefulWidget {
  AnimatedContainerSwitcherDemo();

  @override
  _AnimatedContainerSwitcherDemoState createState() =>
      _AnimatedContainerSwitcherDemoState();
}

class _AnimatedContainerSwitcherDemoState
    extends State<AnimatedContainerSwitcherDemo> {
  bool flag = false;
  _click() async {
    setState(() {
      flag = !flag;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedDemo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
                duration: Duration(seconds: 3),
                width: flag ? 100 : 50,
                height: flag ? 50 : 100,
                padding: flag ? EdgeInsets.all(0) : EdgeInsets.all(30),
                margin: flag ? EdgeInsets.all(0) : EdgeInsets.all(30),
                transform: flag ? Matrix4.skewX(0.0) : Matrix4.skewX(0.3),
                color: flag ? Colors.blue : Colors.grey),
            AnimatedSwitcher(
                duration: Duration(seconds: 3),
                child: flag
                    ? Text("なにもない")
                    : Icon(Icons.favorite, color: Colors.pink))
          ],
        ),
      ),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(onPressed: _click, child: Icon(Icons.add)),
      ]),
    );
  }
}
