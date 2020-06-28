import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('フラッター２画面目'),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(name),
            Center(
                child: RaisedButton(
                  child: Text('戻る'),
                  onPressed: () {
                    Navigator.pop(context, '画面が戻ったよ');
                  },
                ),
              ),
          ],
        ),
        ),
      );
  }
}