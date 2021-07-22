import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Jugaar')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left=3;
  int right=4;
  void changeFace()
  {
    setState(() {
      left=Random().nextInt(6)+1;
      right=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeFace();
              },
              child: Image(
                image: AssetImage('images/dice$left.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                  changeFace();
              },
              child: Image(
                image: AssetImage('images/dice$right.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

