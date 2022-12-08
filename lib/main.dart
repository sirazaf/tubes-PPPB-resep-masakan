import 'package:flutter/material.dart';
import 'package:tubes_masakan_1/MyProfile.dart';
import 'package:tubes_masakan_1/SearchPage.dart';
import 'package:tubes_masakan_1/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: MyBottomNavigationBar(),
      // title: 'PPPB 2022',
      // debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   primaryColor: Colors.white,
      //   textTheme: TextTheme(
      //     bodyText2: TextStyle(color: Colors.white),
      //   ),
      // ),
      // home: HomePage(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [HomePage(), SearchPage(), MyProfil()];
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: new Icon(Icons.info), label: 'About App'),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
