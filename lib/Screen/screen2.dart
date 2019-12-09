import 'package:flutter/material.dart';
import "./screen2Body.dart";
class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen2"),
      ),
      body: Screen2body(),
    );
  }
}
