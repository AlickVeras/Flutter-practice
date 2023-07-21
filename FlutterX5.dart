import 'package:flutter/material.dart';

class FlutterX5 extends StatelessWidget {
  const FlutterX5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feliz natal...'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
                image: NetworkImage(
                    "https://gifdb.com/images/high/christmas-tree-fluffy-shining-art-8nmm5ud48z26njv9.gif")),
            Image(image: AssetImage("assets/xmas.jpg")),
            Image(
                image: NetworkImage(
                    "https://img.freepik.com/vetores-gratis/engracado-papai-noel-comemorando-o-natal_74855-962.jpg?w=826&t=st=1689027540~exp=1689028140~hmac=552862b3055e9461e66aee0995474e696b98400029b5b2d12eb5dcac88f9a8fa"))
          ],
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
