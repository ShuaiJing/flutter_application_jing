import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

class WebNotifier with ChangeNotifier {
  int get currentIndex => _currentIndex;
  int _currentIndex = 0;
  bool _isConnect = true;

  bool get isConnect => _isConnect;

  set isConnect(bool value) {
    _isConnect = value;
  }

  set currentIndex(int index) {
    _currentIndex = index;
    print('currentindex:'+ _currentIndex.toString());
    notifyListeners();
  }

  Future<bool> checkConnected() async {
    final ConnectivityResult connectivityResult =
        await Connectivity().checkConnectivity();
    _isConnect = connectivityResult != ConnectivityResult.none;
    print('netconected:' + _isConnect.toString());
//    if (_isConnect) {
//      currentIndex = 0;
//    } else {
//
//    }
    if (!_isConnect) {
      currentIndex = 2; //网络错误情况
    }
    return _isConnect;
  }
}
