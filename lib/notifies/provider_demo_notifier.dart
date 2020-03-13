import 'package:flutter/material.dart';

class ProviderDemoNotifier extends ChangeNotifier {
  int _index = 1;

  int get index => _index;

  set index(int value) {
    _index = value;
    notifyListeners();  //调用此方法可刷新页面，相当于调用了setstate
  }

}