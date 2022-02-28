/*
  Created by Shawon Lodh on 28/02/2022
*/

import 'package:flutter/material.dart';
import 'package:flutter_provider_basic/counter/data_counter.dart';

class CounterPresenter with ChangeNotifier{
  BuildContext context;
  CounterData counterData;

  /// Constructor
  CounterPresenter(this.context, {required this.counterData});

  void incrementCounter() {
    counterData.numValue = counterData.numValue! + 1;
    notifyListeners();
  }

}