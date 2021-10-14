import 'package:flutter/material.dart';
import 'package:karaoke_lost_app/settings/theme_settings.dart';
//カラオケのリストを表示する画面
class KaraokeListPage extends StatelessWidget {
  final listItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 1',
    'Item 2',
    'Item 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'リスト機能',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: Settings.deviceHeight * 0.2,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: listItems.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    child: Text(listItems[index]),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
