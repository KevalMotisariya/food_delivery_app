import 'package:flutter/material.dart';

class testView extends StatefulWidget {
  const testView({Key? key}) : super(key: key);

  @override
  State<testView> createState() => _testViewState();
}

class _testViewState extends State<testView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        height: 800,
        width: 400,
      ),
    );
  }
}
