import 'package:flutter/material.dart';
import 'package:hello_world/customWidgets/counter.dart';

class FlutterX13 extends StatefulWidget {
  const FlutterX13({super.key});

  @override
  State<FlutterX13> createState() => _FlutterX13State();
}

class _FlutterX13State extends State<FlutterX13> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Counter(
                contador: contador,
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () => setState(() {
                              contador++;
                            }),
                        child: Icon(Icons.add)),
                    SizedBox(
                      width: 50,
                    ),
                    ElevatedButton(
                        onPressed: () => setState(() {
                              contador--;
                            }),
                        child: Icon(Icons.remove))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
