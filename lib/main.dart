import 'package:flutter/material.dart';

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

class Dadoos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {print('Botao 1 pressionado!');},
              child: Image.asset(
                'imgs/dado1.png',
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {print('Botao 2 pressionado');},
              child: Image.asset(
                'imgs/dado2.png',
              ),
            ),
          )
        ],
      ),
    );
  }
}
