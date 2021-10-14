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
    Settings.deviceHeight = MediaQuery.of(context).size.height;
    Settings.deviceWidth = MediaQuery.of(context).size.width;
    return const Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Text(
          "First Page",
          style: TextStyle(fontSize: 20),
        ),
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
