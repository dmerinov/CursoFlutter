import 'package:flutter/material.dart';

void main(List<String> args) {
  //main function that takes a widget to run.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Center(child: Text("Hello World")));
  }
}
