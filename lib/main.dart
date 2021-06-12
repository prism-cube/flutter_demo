import 'package:flutter/material.dart';

import 'package:hello_world/demo/button_demo.dart';
import 'package:hello_world/demo/row_demo.dart';
import 'package:hello_world/demo/drawer_demo.dart';
import 'package:hello_world/demo/animated_container_switcher_demo.dart';
import 'package:hello_world/demo/animated_demo.dart';
import 'package:hello_world/demo/animation_builder_demo.dart';
import 'package:hello_world/demo/animation_contoroller_demo.dart';
import 'package:hello_world/demo/animation_tween_demo.dart';
import 'package:hello_world/demo/floating_action_button_demo.dart';
import 'package:hello_world/demo/navigator_demo.dart';
import 'package:hello_world/demo/page_view_demo.dart';
import 'package:hello_world/demo/shared_preferences_demo.dart';
import 'package:hello_world/demo/shared_preferences_enum_demo.dart';
import 'package:hello_world/demo/stateful_widget_demo.dart';
import 'package:hello_world/demo/url_launcher_demo.dart';
import 'package:hello_world/demo/future_builder_demo.dart';
import 'package:hello_world/demo/date_picker_demo.dart';
import 'package:hello_world/demo/flash_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: MenuList(),
    );
  }
}

class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
        elevation: 0,
      ),
      body: ListView(children: [
        _menuItem("ButtonDemo", ButtonDemo(), context),
        _menuItem("RowDemo", RowDemo(), context),
        _menuItem("DrawerDemo", DrawerDemo(), context),
        _menuItem(
            "FloatingActionButtonDemo", FloatingActionButtonDemo(), context),
        _menuItem("NavigatorDemo", NavigatorDemo(), context),
        _menuItem("PageViewDemo", PageViewDemo(), context),
        _menuItem("SharedPreferencesDemo", SharedPreferencesDemo(), context),
        _menuItem(
            "SharedPreferencesEnumDemo", SharedPreferencesEnumDemo(), context),
        _menuItem("StatefulWidgetDemo", StatefulWidgetDemo(), context),
        _menuItem("UrlLauncherDemo", UrlLauncherDemo(), context),
        _menuItem("FutureBuilderDemo", FutureBuilderDemo(), context),
        _menuItem("DatePickerDemo", DatePickerDemo(), context),
        _menuItem("FlashDemo", FlashDemo(), context),
        _menuItem("AnimatedContainerSwitcher", AnimatedContainerSwitcherDemo(),
            context),
        _menuItem("AnimatedDemo", AnimatedDemo(), context),
        _menuItem("AnimationBuilderDemo", AnimationBuilderDemo(), context),
        _menuItem(
            "AnimationContorollerDemo", AnimationContorollerDemo(), context),
        _menuItem("AnimationTweenDemo", AnimationTweenDemo(), context),
      ]),
    );
  }

  Widget _menuItem(String title, Widget widget, BuildContext context) {
    return Container(
      decoration:
          new BoxDecoration(border: new Border(bottom: BorderSide(width: 1.0))),
      child: ListTile(
        leading: Icon(Icons.star_border),
        title: Text(title),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return widget;
          }));
        },
        onLongPress: () {
          // 長押し
          print("onLongPress called.");
        },
      ),
    );
  }
}
