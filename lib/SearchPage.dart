import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Tentang Aplikasi"),
      ),
      body: new Center(
        child: new Text("Dibuat sebagai Tugas Besar Praktikum PPB 2022"),
      ),
    );
  }
}
