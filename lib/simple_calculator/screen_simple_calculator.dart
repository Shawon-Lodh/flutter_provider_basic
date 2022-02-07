/*
  Created by Shawon Lodh on 07/02/2022
*/

import 'package:flutter/material.dart';
import 'package:flutter_provider_basic/simple_calculator/data_simple_calculator.dart';
import 'package:flutter_provider_basic/simple_calculator/presenter_simple_calculator.dart';
import 'package:provider/provider.dart';

class SimpleCalculatorScreen extends StatefulWidget {
  const SimpleCalculatorScreen({Key? key}) : super(key: key);

@override
_SimpleCalculatorScreenState createState() => _SimpleCalculatorScreenState();
}

class _SimpleCalculatorScreenState extends State<SimpleCalculatorScreen> {

  final _loginFormKey = GlobalKey<FormState>();

  SimpleCalculatorScreenData? _simpleCalculatorScreenData;

  SimpleCalculatorScreenPresenter? _simpleCalculatorScreenPresenter;

  @override
  void initState() {
    _simpleCalculatorScreenData = SimpleCalculatorScreenData(firstInputField: "",secondInputField: "",answerField: "",calculationOperation: CalculationOperation.none);
    _simpleCalculatorScreenPresenter = SimpleCalculatorScreenPresenter(context, _simpleCalculatorScreenData!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(title: const Text("Test Calculator"),),
        body: Column(
          children: [
            const Text("First Input"),
            TextField(
              controller: TextEditingController(),
              onChanged: (value){

              },
            ),
            const Text("First Input"),
            TextField(
              controller: TextEditingController(),
              onChanged: (value){

              },
            ),
          ],
        ),
      ),
    );
  }

}