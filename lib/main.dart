import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: ball()
  ));
}

class ball extends StatefulWidget {
  @override
  _ballState createState() => _ballState();
}

class _ballState extends State<ball> {

  int ballno = 1;
  void ballwa() {
    setState(() {
      ballno = Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Ask Me Anything'),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
          onPressed: (){
            ballwa();
          },
          child: Image.asset('images/ball$ballno.png'),
        ),
      ),
    );
  }
}

