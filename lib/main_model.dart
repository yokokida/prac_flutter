import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier {
  String name = 'ヨコキです';

  void changeName(){
    name = '小林なに氏？';
    notifyListeners();
  }
}
