import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

import 'donasiViewer.dart';
import 'homeViewer.dart';

class ViewerPage extends StatefulWidget {
  @override
  _ViewerPageState createState() => _ViewerPageState();
}

class _ViewerPageState extends State<ViewerPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeViewer(),
    DonasiViewer(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: TitledBottomNavigationBar(
        indicatorColor: Color.fromRGBO(15, 213, 152, 1),
        inactiveColor: Colors.black,
        activeColor: Color.fromRGBO(15, 213, 152, 1),
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          TitledNavigationBarItem(
            title: 'Home',
            icon: Icons.home,
          ),
          TitledNavigationBarItem(
            title: 'Donasi',
            icon: Icons.attach_money,
          ),
        ],
      ),
    );
  }
}
