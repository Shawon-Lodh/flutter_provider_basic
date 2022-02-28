/*
  Created by Shawon Lodh on 28/02/2022
*/

import 'package:flutter/material.dart';
import 'package:flutter_provider_basic/counter/data_counter.dart';
import 'package:flutter_provider_basic/counter/presenter_counter.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  CounterData? _counterData;
  CounterPresenter? _counterPresenter;

  @override
  void initState() {
    _counterData = CounterData(num: 0);
    _counterPresenter = CounterPresenter(context, counterData: _counterData!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    /// if need single provider
    return ChangeNotifierProvider(
      create: (context) => _counterPresenter!,
      child: Consumer<CounterPresenter>(                // get it
          builder: (context, counterPresenter, child) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Test Provider"),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      _counterData!.numValue.toString(),
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () => _counterPresenter!.incrementCounter(),
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),



            );
          }),
    );

    /// if need multiple provider
    // return MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider.value(
    //       value: _counterPresenter!,
    //     ),
    //   ],
    //   child: Consumer<CounterPresenter>(                // get it
    //       builder: (context, counterPresenter, child) {
    //         return Scaffold(
    //           appBar: AppBar(
    //             title: Text("Test Provider"),
    //           ),
    //           body: Center(
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: <Widget>[
    //                 const Text(
    //                   'You have pushed the button this many times:',
    //                 ),
    //                 Text(
    //                   _counterData!.numValue.toString(),
    //                   style: Theme.of(context).textTheme.headline4,
    //                 ),
    //               ],
    //             ),
    //           ),
    //           floatingActionButton: FloatingActionButton(
    //             onPressed: () => _counterPresenter!.incrementCounter(),
    //             tooltip: 'Increment',
    //             child: Icon(Icons.add),
    //           ),
    //
    //
    //
    //         );
    //       }),
    // );
  }
}