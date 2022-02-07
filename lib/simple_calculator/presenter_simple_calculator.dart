/*
  Created by Shawon Lodh on 07/02/2022
*/

import 'package:flutter/material.dart';
import 'package:flutter_provider_basic/simple_calculator/data_simple_calculator.dart';

class SimpleCalculatorScreenPresenter with ChangeNotifier{
  BuildContext context;
  final SimpleCalculatorScreenData _simpleCalculatorScreenData;

  /// Constructor
  SimpleCalculatorScreenPresenter(this.context,this._simpleCalculatorScreenData);

  void increment() {
    // _count++;
    notifyListeners();
  }

  void decrement() {
    // _count--;
    notifyListeners();
  }

  void reset() {
    // _count = 0;
    notifyListeners();
  }

}