import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final contador;

  Counter({required this.contador, super.key});

  @override
  Widget build(BuildContext context) {
    return (Text(contador.toString(),
        style: TextStyle(
            fontSize: 38, color: contador >= 0 ? Colors.green : Colors.red)));
  }
}
