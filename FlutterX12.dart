import 'package:flutter/material.dart';

class FlutterX12 extends StatefulWidget {
  const FlutterX12({super.key});

  @override
  State<FlutterX12> createState() => _FlutterX12State();
}

List<String> nomes = ['Álick', 'Samuel', 'Mateus', 'Fernando'];

class _FlutterX12State extends State<FlutterX12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: nomes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(nomes[index]),
            trailing: IconButton(
                onPressed: () {
                  setState(() {
                    nomes.removeAt(index);
                  });
                },
                icon: Icon(Icons.highlight_remove_sharp)),
          );
        },
      ),
    );
  }
}
