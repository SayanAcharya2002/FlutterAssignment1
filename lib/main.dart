import 'package:flutter/material.dart';

import 'texting.dart';
import 'textcontrol.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var textList = [
    'whassup',
    'this is fun',
    'flutter is love',
  ];
  var index = 0;
  void changeIndex() {
    setState(() {
      index += 1;
      index %= textList.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Test App"),
        backgroundColor: Colors.lightGreen,
        brightness: Brightness.dark,
      ),
      body: Column(
        children: [
          Texting(
            textData: textList[index],
          ),
          TextControl(
            textControlFunction: changeIndex,
          ),
        ],
      ),
    ));
  }
}
