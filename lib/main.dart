import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Ask Me Anything"),
        ),
        body: magic(),
      ),
    ),
  );
}

class magic extends StatefulWidget {
  @override
  State<magic> createState() => _magicState();
}

class _magicState extends State<magic> {
  int num = 1;
  void ran() {
    setState(() {
      num = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                ran();
              },
              child: Image.asset('images/ball$num.png'),
            ),
          ),
        ],
      ),
    );
  }
}
