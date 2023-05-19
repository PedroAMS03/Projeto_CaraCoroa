import 'dart:math';

import 'package:caracoroa/resultado.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: CaraCoroa(),
    debugShowCheckedModeBanner: false,
    ));
}

class CaraCoroa extends StatefulWidget {
  const CaraCoroa({super.key});

  void exibirResultado(){

 var itens = ['cara', 'coroa'];

 var numero = Random().nextInt(itens.length);

 var resultado = itens[numero];}

  @override
  State<CaraCoroa> createState() => _CaraCoroaState();
}

class _CaraCoroaState extends State<CaraCoroa> {
  void _exibirResultado(){
    var itens=['cara', 'coroa'];
    var num=Random().nextInt(itens.length);
    var resultado=itens[num];
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => Resultado(resultado)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(99, 191, 139,1),
      body: Container(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[

            Image.asset("imagens/logo.png"),

            GestureDetector(
              child: Image.asset("imagens/botao_jogar.png"),
              onTap: _exibirResultado,
              
            )
          ],

        ),
      ),
    );
  }
}

