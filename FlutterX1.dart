import 'package:flutter/material.dart';

class FlutterX1 extends StatelessWidget {
  const FlutterX1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        ),
        body: const Center(
          child: Text('Flutter é legal :)', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
          ),
        );
  }
}
