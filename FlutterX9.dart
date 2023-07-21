import 'package:flutter/material.dart';
import 'package:hello_world/screens/FlutterX9.1.dart';

class FlutterX9 extends StatelessWidget {
  const FlutterX9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vá para a próxima tela!'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Essa é a primeira tela'),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FlutterX9_1()));
                },
                child: Text('Ir para a segunda tela'))
          ],
        ),
      ),
    );
  }
}
