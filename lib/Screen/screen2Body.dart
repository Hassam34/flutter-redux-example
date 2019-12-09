import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:reduxtut/Modal/appState.dart';

class Screen2body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) {
        return Container(
          // color: Colors.yellowAccent,
          child: Container(
            child: Column(
              children: <Widget>[
                Text("My name is Muhammad Hassam",
                    style: TextStyle(fontSize: state.fontSize.toDouble()))
              ],
            ),
          ),
        );
      },
    );
  }
}
