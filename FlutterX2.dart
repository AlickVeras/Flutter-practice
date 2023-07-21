import 'package:flutter/material.dart';

class FlutterX2 extends StatelessWidget {
  const FlutterX2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Flutter é tech', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Flutter é pop', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Flutter é tudo', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ));
  }
}
