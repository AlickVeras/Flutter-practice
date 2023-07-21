import 'package:flutter/material.dart';
import 'FlutterX9.dart';

class FlutterX9_1 extends StatelessWidget {
  const FlutterX9_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Segunda tela')),
      body: Center(
        child: Column(
          children: [
            Text('Essa é a segunda tela!'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Vá para a primeira tela'))
          ],
        ),
      ),
    );
  }
}
