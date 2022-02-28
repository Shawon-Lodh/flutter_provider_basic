/*
  Created by Shawon Lodh on 28/02/2022
*/

class CounterData{
  int? num;

  /// Constructor
  CounterData({this.num});

  /// Number Input
  int? get numValue{
    return num;
  }
  set numValue(int? valueNum) {
    num = valueNum;
  }
}