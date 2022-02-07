/*
  Created by Shawon Lodh on 07/02/2022
*/

import 'package:flutter/material.dart';

enum CalculationOperation {
  add,
  subtraction,
  multiplication,
  division,
  none
}

class SimpleCalculatorScreenData with ChangeNotifier{
  String? firstInputField, secondInputField, answerField;
  CalculationOperation? calculationOperation;

  /// Constructor
  SimpleCalculatorScreenData({this.firstInputField, this.secondInputField, this.answerField, this.calculationOperation});

  /// First Input Field
  String? get firstInputFieldValue{
    return firstInputField;
  }

  set firstInputFieldValue(String? valueFirstInputField) {
    firstInputField = valueFirstInputField;
    notifyListeners();
  }

  /// Second Input Field
  String? get secondInputFieldValue{
    return secondInputField;
  }

  set secondInputFieldValue(String? valueSecondInputField) {
    secondInputField = valueSecondInputField;
    notifyListeners();
  }

  /// Answer Field
  String? get answerFieldValue{
    return answerField;
  }

  set answerFieldValue(String? valueAnswerField) {
    answerField = valueAnswerField;
    notifyListeners();
  }

  /// Calculation operation
  CalculationOperation? get calculationOperationValue{
    return calculationOperation;
  }

  set calculationOperationValue(CalculationOperation? valueCalculationOperation) {
    calculationOperation = valueCalculationOperation;
    notifyListeners();
  }

}