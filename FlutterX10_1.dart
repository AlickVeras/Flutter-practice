import 'dart:js';
import 'package:flutter/material.dart';
import 'FlutterX10.dart';


class FlutterX10_1 extends StatelessWidget {
  FlutterX10_1({super.key});


  @override
  Widget build(BuildContext context) {
    Usuario usuario = ModalRoute.of(context)!.settings.arguments as Usuario;
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(100),
          child: Column(
            children: [
              Icon(Icons.check_circle_outline, color: Colors.green, size: 100),
              Padding(padding: EdgeInsets.all(50),
              child: Text("Parabéns, ${usuario.nome}! Você se cadastrou com sucesso!", style: TextStyle(fontSize: 20),),),
              Padding(padding: EdgeInsets.all(50),
              child: Text("Um e-mail de confirmação de cadastro foi enviado para o e-mail ${usuario.email}.", style: TextStyle(fontSize: 20)),),
              ElevatedButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text("Amei!"))
            ],
          ),
        ),
      )
    );
  }
}
