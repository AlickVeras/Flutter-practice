import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Usuario {
  String? nome;
  String? email;
}

class FlutterX10 extends StatelessWidget {
  FlutterX10({super.key});

  TextEditingController inputNome = TextEditingController();
  TextEditingController inputEmail = TextEditingController();
  Usuario usuario = Usuario();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cadastro")),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.network(
                    "https://library.fuller.edu/wp-content/uploads/2017/02/needyou.jpg"),
                Text(
                  "Bem vindo! Preencha as informações abaixo para se alistar.",
                  style: TextStyle(fontSize: 30),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 100, bottom: 30, left: 600, right: 600),
                  child: TextField(
                    controller: inputNome,
                    decoration: InputDecoration(labelText: "Nome"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 30, left: 600, right: 600),
                  child: TextField(
                      controller: inputEmail,
                      decoration: InputDecoration(labelText: "E-mail")),
                ),
                ElevatedButton(
                    onPressed: () {
                      if ((!inputNome.text.isEmpty) &&
                          (!inputEmail.text.isEmpty)) {
                        usuario.email = inputEmail.text;
                        usuario.nome = inputNome.text;
                        Navigator.of(context)
                            .pushNamed("/sucesso", arguments: usuario);
                      }
                    },
                    child: Text("Salvar")),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
