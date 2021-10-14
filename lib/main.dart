import 'package:flutter/material.dart';
import 'package:karaoke_lost_app/settings/theme_settings.dart';
import 'package:karaoke_lost_app/view/karaoke_list_page.dart';

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

//最初に表示する画面
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Settings.deviceHeight = MediaQuery
        .of(context)
        .size
        .height;
    Settings.deviceWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _title(), //題名
            _text() //表示
          ],
        ),
      ),
    );
  }

  Widget _title(){ //タイトル
    return Container(
      margin: EdgeInsets.only(top: 50), //上空白
      width: 800, //サイズ設定
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,  //箱の色
        borderRadius: BorderRadius.circular(15),  //角の丸み
      ),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20), //文字
            child: Text("KaraokeApp",
              style: TextStyle(fontSize: 50, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }

  Widget _text(){
    return Container(
      margin: EdgeInsets.only(top: 100),
      width: 800,
      height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, //左寄せ
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20, left: 20),
            child: Text("next music is ...",
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
          ),
          Divider(  //テキストの下線
            height: 5,
            thickness: 3,
            color: Colors.black12,
            indent:16,
            endIndent:500,
          ),
        ],
      ),
    );
  }
}

//タブバーを表示するWidget/////////////////////
class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;

  static List<Widget> _pageList = [
    FirstPage(),
    KaraokeListPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Setting'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
