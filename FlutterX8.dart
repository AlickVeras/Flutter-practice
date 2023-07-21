import 'package:flutter/material.dart';

class FlutterX8 extends StatefulWidget {
  const FlutterX8({super.key});

  @override
  State<FlutterX8> createState() => _FlutterX8State();
}

class _FlutterX8State extends State<FlutterX8> {
  bool marcada = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkbox')),
      body: Center(
        child: Checkbox(
          value: marcada,
          onChanged: (value) {
            setState(() {
              marcada = value!;
            });
          },
        ),
      ),
    );
  }
}
