import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_book_model.dart';

class AddBookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AddBookModel>(
      create: (_) => AddBookModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('追加'),
        ),
        body: Consumer<AddBookModel>(
          builder: (context, model, child) {
            return Column(
              children: <Widget>[
                TextField(
                  onChanged: (text) {
                    model.bookTitle = text;
                  },
                ),
                RaisedButton(
                  child: Text('add btn'),
                  onPressed: () {
                    model.addBookToFirebase();
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('保存しました'),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
