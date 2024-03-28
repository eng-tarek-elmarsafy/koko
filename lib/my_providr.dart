import 'package:flutter/material.dart';

class MyData extends ChangeNotifier {
  String? _myIcon;

  String? _myUrl;

  int _bading = 50;

  @override
  void notifyListeners() => super.notifyListeners();

  void setMyIcon(value) {
    _myIcon = value;
    notifyListeners();
  }

  void setMyUrl(value) {
    _myUrl = value;
    notifyListeners();
  }

  String? getMyIcon() => _myIcon;

  String? getMyUrl() => _myUrl;

  void setBading(value) {
    _bading = value;
    notifyListeners();

  }

  int getBading() => _bading;
}

// class OnTapProvider extends ChangeNotifier {
//   double? _bading;

//   @override
//   void notifyListeners() => super.notifyListeners();

//   void setBading(value) {
//     _bading = value;
//   }

//   double? getBading() => _bading;
// }
