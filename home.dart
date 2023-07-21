import 'package:hello_world/screens/FlutterX10.dart';
import 'package:hello_world/screens/FlutterX12.dart';
import 'package:hello_world/screens/FlutterX13.dart';
import 'package:hello_world/screens/FlutterX9.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/screens/FlutterX1.dart';
import 'package:hello_world/screens/FlutterX2.dart';
import 'package:hello_world/screens/FlutterX4.dart';
import 'package:hello_world/screens/FlutterX5.dart';
import 'package:hello_world/screens/FlutterX7.dart';
import 'package:hello_world/screens/FlutterX10.dart';
import 'FlutterX3.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            shape: const Border(bottom: BorderSide(color: Colors.black)),
            title: const Text('Página Principal',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white))),
        body: Container(
            alignment: Alignment.center,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                  child: Column(children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return FlutterX13();
                            },
                          ),
                        );
                      },
                      child: const Text('Exercicio 01')),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return FlutterX2();
                          },
                        ),
                      );
                    },
                    child: const Text('Exercicio 02')),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return FlutterX3();
                        }));
                      },
                      child: const Text('Exercicio 03')),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return FlutterX4();
                        }));
                      },
                      child: const Text('Exercicio 04')),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return FlutterX4();
                      }));
                    },
                    child: const Text('Exercicio 4.2')),
                Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return FlutterX5();
                        }));
                      },
                      child: const Text('Exercicio 05')),
                ),
                Container(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return FlutterX4();
                        }));
                      },
                      child: const Text('Exercicio 06')),
                ),
                Container(
                    padding: EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return FlutterX7();
                          }));
                        },
                        child: const Text('Exercicio 07'))),
                Container(
                    padding: EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return FlutterX9();
                          }));
                        },
                        child: const Text('Exercicio 08'))),
                Container(
                    padding: EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return FlutterX10();
                          }));
                        },
                        child: const Text('Exercicio 10'))),
                Container(
                    padding: EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return FlutterX12();
                          }));
                        },
                        child: const Text('Exercicio 12')))
              ]))
            ])));
  }
}
