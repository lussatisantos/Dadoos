import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
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
    return Row(
      children: [
        Expanded(
          child: Image.asset('imgs/dado1.png'),
          ),
        Expanded(
          child: Image.asset('imgs/dado2.png'),
        )
      ],
    );
  }
}
