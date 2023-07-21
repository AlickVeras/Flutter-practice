import 'package:flutter/material.dart';

class FlutterX6 extends StatefulWidget {
  const FlutterX6({super.key});

  @override
  State<FlutterX6> createState() => _FlutterX6();
}

class _FlutterX6 extends State<FlutterX6> {


  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  TextEditingController userController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
         title: Text("Login"),
    ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key:formKey1,
            child: Column(
              children:[
                SizedBox(height: 50),
                Text("PLAYER ID", style: TextStyle(fontSize: 50)),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
                  child: TextFormField(
                  controller:userController,
                    decoration: InputDecoration(
                        hintText: "Nome de usuário",
                        border: OutlineInputBorder()),
                      validator:(value) {
                    if (value == null)
                      return "O nome de usuário informado é nulo!";

                    if (value!.trim().isEmpty)
                      return "O nome de usuário é obrigatório!";

                    if (value!.length < 2)
                      return "O nome deve possuir pelo menos dois caracteres";}),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, bottom: 30),
                  child: TextFormField(
                      obscureText: true,
                      controller:senhaController,
                      decoration: InputDecoration(
                        hintText: "Senha",
                        border: OutlineInputBorder()),
                      validator:(value) {
                        if (value == null)
                          return "A senha não pode ser nula!";

                        if (value!.trim().isEmpty)
                          return "A senha é obrigatória!";

                        if (value!.length > 0)
                          return "A senha está incorreta!";}),
                ),
                ElevatedButton(onPressed: (){
                  
                }, child: Text('Entrar'))
              ])),
        ),
      ));}}
