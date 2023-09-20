import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ask Me Anything",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Ask Me Anything',
          ),
          backgroundColor: Colors.lightBlue.shade900,
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int myball = 1;
  void change() {
    setState(() {
      myball = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue.shade800,
      child: Center(
        child: TextButton(
          onPressed: () {
            change();
          },
          child: Image.asset('images/ball$myball.png'),
        ),
      ),
    );
  }
}
