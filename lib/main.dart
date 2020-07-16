import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(child: Text('Dice Roll')),
          backgroundColor: Colors.blue,
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
  int number=Random().nextInt(6)+1;
  int number2=Random().nextInt(6)+1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
//          flex:1,
            child:FlatButton(
                onPressed: (){
                  setState(() {
                    number=Random().nextInt(6)+1;
                  });
//                  print("HEEELLLLLLLLLLp");
                },
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset('images/dice$number.png'),
                )),
          ),
          Expanded(
//          flex:1,
            child:FlatButton(
                onPressed: (){
                  setState(() {
                    number2=Random().nextInt(6)+1;
                  });
//                  print("right hai");
                },
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset('images/dice$number2.png'),
                )),
          ),
          RaisedButton(
            onPressed: () {
            setState(() {
              number2=Random().nextInt(6)+1;
              number=Random().nextInt(6)+1;
            });},
            child: const Text('Roll',
                style:
                TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
