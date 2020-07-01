import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier {
  String name = '本一覧画面に飛ぶよ';

  void changeName(){
    name = '小林なに氏？';
    notifyListeners();
  }
}
