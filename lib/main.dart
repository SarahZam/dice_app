import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red[800],
        ),
        body: DicePage(),
      ),
    ),
  );
}

//stateful - if u wanna update
class DicePage extends StatefulWidget {
  @override
  _State createState() => _State();
}



class _State extends State<DicePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  @override
  Widget build(BuildContext context) {

    void random(){
      setState(() {
        leftDiceNumber = Random().nextInt(6)+1;
        rightDiceNumber = Random().nextInt(6)+1;
      });
      }

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //takes twice as wide
            //the flex property is just a ratio
            //flex: 2,
            child: FlatButton(
              onPressed: (){
               random();
              },
              //string intolipation
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                random();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}
