import 'package:flutter/foundation.dart';
import 'package:providers/screen/count.dart';

class CountProvider with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void setCount() {
    _count++;
    notifyListeners();
  }

  void setsub() {
    _count--;
    notifyListeners();
  }
}
