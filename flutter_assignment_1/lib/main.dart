// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import './textcontrol.dart';
import './text.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp();
  @override
  State<MyApp> createState() => App();
}

class App extends State<MyApp> {
  final _text = [
    "This is my app",
    "I made an App",
    "I have a laptop",
    "I don't have an Macbook Air"
  ];
  String _pri = 'Click the button to change the text!';
  int _textIndex = 0;
  void changeText() {
    setState(() {
      _textIndex++;
      _textIndex %= _text.length;
      _pri = _text[_textIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Text Randomizer'),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NewText(pri: _pri),
              const SizedBox(
                height: 10,
              ),
              TextControl(selectText: changeText),
            ],
          ),
        ),
      ),
    );
  }
}
