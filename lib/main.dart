import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(IssaApp());
}

class IssaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'An Issa App',
      theme: ThemeData(
        primaryColor: Colors.purple[300],
        accentColor: Colors.black,
      ),
      home: HomePage(title: 'ISSA KHALIFA'),
    );
  }
}
