import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:reduxtut/Modal/appState.dart';
import '../Redux/actions.dart';
import './screen2.dart';

class Screen1Body extends StatelessWidget {
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
                  Text("fontSize: ${state.viewFontSize.toInt()}"),
                  RaisedButton(
                    child: Text('Go Screen 2'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Screen2()),
                      );
                    },
                  ),
                  Container(
                    height: 10,
                  ),
                  GestureDetector(
                    child: Text("12"),
                    onTap: () {
                      StoreProvider.of<AppState>(context)
                          .dispatch(FontSize(12));
                    },
                  ),
                  Container(
                    height: 10,
                  ),
                  GestureDetector(
                    child: Text("22"),
                    onTap: () {
                      StoreProvider.of<AppState>(context)
                          .dispatch(FontSize(22));
                    },
                  ),
                  Container(
                    height: 10,
                  ),
                  GestureDetector(
                    child: Text("32"),
                    onTap: () {
                      StoreProvider.of<AppState>(context)
                          .dispatch(FontSize(32));
                    },
                  ),
                  Container(
                    height: 10,
                  ),
                  GestureDetector(
                    child: Text("42"),
                    onTap: () {
                      StoreProvider.of<AppState>(context)
                          .dispatch(FontSize(42));
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
