import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  PageViewDemo();

  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  late PageController _pageController;
  int _selectedIndex = 0;

  var _pages = [
    PageViewDemo1(),
    PageViewDemo2(),
    PageViewDemo3(),
  ];
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //return LoginPage();

    return Scaffold(
        body: PageView(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: _pages));
  }
}

class PageViewDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PageViewDemo1"),
        ),
        body: Center(
            child: Container(
                color: Colors.redAccent,
                child: Text("PageViewDemo1", style: TextStyle(fontSize: 80)))));
  }
}

class PageViewDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PageViewDemo2"),
        ),
        body: Center(
            child: Container(
                color: Colors.greenAccent,
                child: Text("PageViewDemo2", style: TextStyle(fontSize: 80)))));
  }
}

class PageViewDemo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PageViewDemo3"),
        ),
        body: Center(
            child: Container(
                color: Colors.blueAccent,
                child: Text("PageViewDemo3", style: TextStyle(fontSize: 80)))));
  }
}
