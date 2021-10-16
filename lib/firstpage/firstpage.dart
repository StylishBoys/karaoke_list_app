import 'package:flutter/material.dart';
import 'package:karaoke_lost_app/settings/theme_settings.dart';

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
