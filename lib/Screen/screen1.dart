import 'package:flutter/material.dart';
import './screen1Body.dart';
class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen1"),
      ),
      body:Screen1Body()
    );
  }
}
