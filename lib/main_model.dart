import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier {
  String name = '小林です';

  void changeName(){
    name = '小林なに氏？';
    notifyListeners();
  }
}
