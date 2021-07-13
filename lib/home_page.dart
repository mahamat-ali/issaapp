import 'package:flutter/material.dart';
import 'package:issaapp/page_one.dart';
import 'package:issaapp/page_three.dart';
import 'package:issaapp/page_two.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PageOne(),
    PageTwo(),
    PageThree(),
  ];

  final _appBarTitles = ['Page 1', 'Page 2', 'Page 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[_currentIndex]),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'PAGE 1',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'PAGE 2',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'PAGE 3',
          ),
        ],
      ),
    );
  }
}
