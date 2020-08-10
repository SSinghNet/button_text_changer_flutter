// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';

import './my_text.dart';
import './text_control.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String theText = "Text 1";
  bool theTextSetOnce = false;

  void _changeText() {
    setState(() {
      if (!theTextSetOnce) {
        theText = "Text 1";
        theTextSetOnce = true;
      } else {
        theText = "Text 2";
        theTextSetOnce = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Assignment"),
          ),
          body: Column(
            children: [
              MyText(theText),
              TextControl(_changeText),
            ],
          )),
    );
  }
}
