import 'dart:html';
import '../main.dart';
import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  home_page({Key? key}) : super(key: key);

  final tabs = [
    //Center(child: Text('Back')),
    Center(child: Text('Home')),
    Center(child: Text('profile')),
  ];
  //static const String title = 'ThetaMetrics';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buttons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //scaffoldBackgroundColor: Color.fromARGB(255, 143, 112, 76)
      ),
      //lerp(Colors.amberAccent, Colors.blueAccent, 1.3)
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String istapped = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theta metrics'),
        backgroundColor: Color.fromARGB(255, 43, 149, 170),
        actions: [
          Container(
            width: 30,
            //height: 80,
            child: Icon(Icons.person_2),
          ),
          //Icon(Icons.more_vert),
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 47, 213, 239),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(40))),
              )),
          Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(40))),
              )),
        ],
      )),
    );
  }
}
        //backgroundColor: Color.lerp(Colors.amberAccent, Colors.blue, 1.5),
        /* body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /*ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(80)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 14, color: Colors.white))),
                onPressed: () {},
                child: const Text('part A')),
            // ElevatedButton
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(80)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 14, color: Colors.white))),
                onPressed: () {},
                child: const Text('part B')),
                */
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 43, 149, 170)),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.fromLTRB(130, 60, 130, 60)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 14, color: Colors.white))),
                  onPressed: () {},
                  child: const Text('part A\n2 marks mcq')),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 43, 149, 170)),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.fromLTRB(130, 60, 130, 60)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 14, color: Colors.white))),
                  onPressed: () {},
                  child: const Text('part B\n5 marks mcq')),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 43, 149, 170)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.fromLTRB(130, 60, 130, 60))),
                child: Text('Part C\nSolve problem'),
                onPressed: () {
                  print('Hello');
                },
              ),
              const SizedBox(height: 50),
              Text(
                istapped,
                textScaleFactor: 2,
              )
            ],
          ),
        ),
        backgroundColor: Colors.lightBlue[50],
        /*bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        iconSize: 50,
        backgroundColor: Color.fromARGB(255, 43, 149, 170),
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          /*BottomNavigationBarItem(
              label: 'Backspace',
              icon: Icon(Icons.backspace_sharp),
              //BottomNavigationBarItem.label: 'Backspace',
              backgroundColor: Colors.blue), */ // BottomNavigationBarItem
          BottomNavigationBarItem(

              label: 'Home',
              icon:
                  Icon(Icons.home_filled, color: Color.fromARGB(255, 0, 0, 0)),
              backgroundColor:
                  Color.fromARGB(255, 0, 0, 0)), // BottomNavigationBarItem
          /*BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person_outlined,
                  color: Color.fromARGB(255, 0, 0, 0)),
              backgroundColor: Color.fromARGB(255, 0, 0, 0)),*/
          BottomNavigationBarItem(
              label: 'Logout',
              icon:
                  Icon(Icons.logout_sharp, color: Color.fromARGB(255, 0, 0, 0)),
              backgroundColor: Color.fromARGB(255, 0, 0, 0)),
        ], // BottomNavigationBarItem
      ),*/
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Shifting
          selectedItemColor: Color.fromARGB(255, 255, 255, 255),
          unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
          backgroundColor: Color.fromARGB(255, 43, 149, 170),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color.fromARGB(
                  255, 43, 149, 170), // <-- This works for shifting
            ),
            BottomNavigationBarItem(
              label: 'LogOut',
              icon: Icon(Icons.logout_outlined),

              backgroundColor:
                  Color.fromARGB(255, 0, 0, 0), // <-- This works for shifting
            ),
          ],
        ));
  }
}

const String title = 'ThetaMetrics';
int _currentIndex = 0;
/*@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: title,
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
      inputDecorationTheme: const InputDecorationTheme(
        labelStyle: TextStyle(color: Colors.redAccent),
      ),
    ),
    home: Scaffold(
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
        backgroundColor: Color.fromARGB(255, 43, 149, 170),
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          /*BottomNavigationBarItem(
              label: 'Backspace',
              icon: Icon(Icons.backspace_sharp),
              //BottomNavigationBarItem.label: 'Backspace',
              backgroundColor: Colors.blue), */ // BottomNavigationBarItem
          BottomNavigationBarItem(
              label: 'Home',
              icon:
                  Icon(Icons.home_filled, color: Color.fromARGB(255, 0, 0, 0)),
              backgroundColor:
                  Color.fromARGB(255, 0, 0, 0)), // BottomNavigationBarItem
          BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person_outlined,
                  color: Color.fromARGB(255, 0, 0, 0)),
              backgroundColor: Color.fromARGB(255, 0, 0, 0)),
          BottomNavigationBarItem(
              label: 'Logout',
              icon:
                  Icon(Icons.logout_sharp, color: Color.fromARGB(255, 0, 0, 0)),
              backgroundColor: Color.fromARGB(255, 0, 0, 0)),
        ], // BottomNavigationBarItem
      ),
    ),
  );
}*/
*/