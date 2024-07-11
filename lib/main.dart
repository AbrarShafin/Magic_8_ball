import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
                style: TextStyle(color: Colors.white), 'Ask me Anything :)'),
            backgroundColor: Colors.blueGrey,
            shadowColor: Colors.black,
            elevation: 5,
          ),
          backgroundColor: Colors.blue,
          body: const ball(),
        ),
      ),
    );

class ball extends StatefulWidget {
  const ball({super.key});

  @override
  State<ball> createState() => _ballState();
}

class _ballState extends State<ball> {
  int ballguess = 4;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballguess = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballguess.png'),
      ),
    );
  }
}
