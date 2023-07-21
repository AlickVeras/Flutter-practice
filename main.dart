import 'package:flutter/material.dart';
import 'package:hello_world/screens/FlutterX10_1.dart';
import 'package:hello_world/screens/home.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const HomeScreen(),
      routes: {
        "/sucesso": (context) => FlutterX10_1(),
      },
    );
  }
}
