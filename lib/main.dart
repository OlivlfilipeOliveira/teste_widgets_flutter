import 'dart:math';

import 'package:flutter/material.dart';
import 'package:teste_widgets/select_image.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> imagens = ['imagens/google.png', 'imagens/Instagram.png', 'imagens/face.png'];

  SelectImageController controller = SelectImageController();
  var rng = new Random();
  String googleImagem = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    googleImagem = imagens[0];
  }

  void selectImage(){

    setState(() {
      googleImagem = imagens[rng.nextInt(3)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste Widgets"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(googleImagem))),
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: selectImage,
        child: Icon(Icons.restart_alt),
      ),
    );
  }
}
