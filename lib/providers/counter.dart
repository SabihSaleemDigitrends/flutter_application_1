import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int counterValue;

  Counter({
    this.counterValue = 0,
  });

  void increment() {
    counterValue = counterValue + 1;
    notifyListeners();
  }

  void decrement() {
    counterValue = counterValue - 1;
    notifyListeners();
  }
}
