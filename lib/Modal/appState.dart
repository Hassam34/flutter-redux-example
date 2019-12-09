import 'package:flutter/material.dart';

class AppState {
  int fontSize;
  AppState({@required this.fontSize});
  AppState.fromAppState(AppState another) {
    fontSize = another.fontSize;
  }
  int get viewFontSize => fontSize;
}
