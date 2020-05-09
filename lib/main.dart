import './contact.dart';
import './home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyApp> {
  int _selectedPage = 0;
  final _pageOptions = [
    Home(),
    Contact(),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.blue.shade300)
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white70,
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              title: Text('Contact'),
            ),
          ],
        ),
      ),
    );
  }
}
