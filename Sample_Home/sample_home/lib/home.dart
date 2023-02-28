import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  home_page({Key? key}) : super(key: key);
  int _currentIndex = 0;
  final tabs = [
    Center(child: Text('Back')),
    Center(child: Text('Home')),
    Center(child: Text('profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard Reports"),
        elevation: 0,
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        iconSize: 50,
        backgroundColor: Colors.blue,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.backspace),
              //BottomNavigationBarItem.label: 'Backspace',
              backgroundColor: Colors.blue), // BottomNavigationBarItem
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Colors.blue), // BottomNavigationBarItem
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), backgroundColor: Colors.blue),
        ], // BottomNavigationBarItem
      ),
    );
  }
}
