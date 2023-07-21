import 'package:flutter/material.dart';

class FlutterX3 extends StatefulWidget {
  FlutterX3({super.key});

  @override
  State<FlutterX3> createState() => _FlutterX3State();
}

class _FlutterX3State extends State<FlutterX3> {
  int contador = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(100),
                child: Text(
                  contador.toString(),
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: (contador == 30 ? Colors.deepOrange : Colors.black)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            contador -= 1;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Text('-', style: TextStyle(fontSize: 20)),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            contador += 1;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Text('+', style: TextStyle(fontSize: 20)),
                        )),
                  )
                ],
              )
            ],
          )),
    );
  }
}
