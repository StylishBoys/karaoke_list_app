import 'package:flutter/material.dart';
import 'package:karaoke_lost_app/tabpage/tabpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'カラオケのオトモ',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: TabPage(),
    );
  }
}