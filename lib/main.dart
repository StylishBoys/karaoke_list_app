import 'package:flutter/material.dart';
import 'package:karaoke_lost_app/view/home_view';

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
        primarySwatch: Colors.orange,
      ),
      home: MainPage(),
    );
  }
}
//最初に表示する画面
class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("カラオケのオトモ")),
      body: Container(
        child: Column(
          children: [
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}

