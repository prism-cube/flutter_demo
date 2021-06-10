import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UrlLauncherDemo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Google"),
            IconButton(
                icon: Icon(Icons.open_in_browser),
                onPressed: () async {
                  String url = Uri.encodeFull("https://www.google.co.jp");
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                }),
          ],
        ),
      ),
    );
  }
}
