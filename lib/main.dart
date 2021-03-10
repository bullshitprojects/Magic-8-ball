import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        title: Text(
          'Julio Canizalez',
        ),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Magic 8 Ball',
              style: TextStyle(
                  fontSize: 35, fontFamily: 'Pacifico', color: Colors.white),
            ),
            SizedBox(
              height: 95,
            ),
            MagicBall()
          ],
        ),
      ),
    ),
  ));
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int min = 1;
  int max = 6;
  int ball = 0;
  final randN = new Random();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
            onPressed: () {
              generateRandom();
            },
            child: Image.asset('src/img/ball$ball.png'),
          ))
        ],
      ),
    );
  }

  void generateRandom() =>
      setState(() => ball = min + randN.nextInt(max - min));
}
