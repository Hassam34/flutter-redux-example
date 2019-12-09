import 'package:flutter/material.dart';
import './Screen/screen1.dart';
import './Modal/appState.dart';
import './Redux/reducers.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() {
  final _initialState = AppState(fontSize: 12);
  final Store<AppState> _store =
      Store<AppState>(reducer, initialState: _initialState);
  runApp(MyApp(store: _store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;
  MyApp({this.store});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store:store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Screen1(),
      ),
    );
  }
}
