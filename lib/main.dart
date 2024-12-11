import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Dadoos',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Dadoos(),
      ),
    ),
  );
}



class Dadoos extends StatefulWidget {
  const Dadoos({super.key});

  @override
  State<Dadoos> createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  int numeroDoDadosDaEsquerda = 1;
  int numeroDoDadosDaDireita = 1;

  void alterDados() {
    setState(() {
      numeroDoDadosDaDireita = Random().nextInt(6) + 1;
      numeroDoDadosDaEsquerda = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                alterDados();
              },
              child: Image.asset(
                'imgs/dado$numeroDoDadosDaEsquerda.png',
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                alterDados();
              },
              child: Image.asset(
                'imgs/dado$numeroDoDadosDaDireita.png',
              ),
            ),
          )
        ],
      ),
    );
  }
}