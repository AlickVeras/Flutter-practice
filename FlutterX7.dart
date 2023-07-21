import 'package:flutter/material.dart';

class FlutterX7 extends StatelessWidget {
  FlutterX7({super.key});

  List<String> nomes = [];
  TextEditingController novoNome = TextEditingController();
  final nomeKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demonheira")),
      body: Column(
        children: [
          Container(
            color: Colors.pink,
            height: 300,
            child: ListView.builder(
              itemCount: nomes.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(title: Text((index + 1).toString())),
                    SizedBox(height: 30),
                    Text((nomes[index]))
                  ],
                );
              },
            ),
          ),
          Container(
            height: 300,
            color: Colors.green,
            child: Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      nomes.add(novoNome as String);},
                    child: Text('Adicionar')),
                TextFormField(
                  controller: novoNome,
                  key: nomeKey,
                  decoration: InputDecoration(hintText: 'Inserir pessoa'),
                )
              ],
            ),
          ),

        ],
      ));
  }
}
