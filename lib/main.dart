import 'package:flutter/material.dart';
import 'package:go_moon/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rivaldo marere',
      theme:
          ThemeData(scaffoldBackgroundColor: Color.fromRGBO(31, 31, 31, 1.0)),
      home: MyHomePage(),
    );
  }
}
