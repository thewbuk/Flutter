import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DiceChange(),
      ),
    ),
  );
}

class DiceChange extends StatefulWidget {
  @override
  _DiceChangeState createState() => _DiceChangeState();
}

class _DiceChangeState extends State<DiceChange> {
  int lefty;
  int righty;
  bool pressed = false;
  int change() {
    int number;
    number = Random().nextInt(6) + 1;
    return number;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      lefty = change();
                      pressed = true;
                    });
                  },
                  child: Image.asset('images/dice$lefty.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      righty = change();
                      pressed = true;
                    });
                  },
                  child: Image.asset('images/dice$righty.png'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  color: Colors.white,
                  elevation: 10,
                  splashColor: Colors.red,
                  animationDuration: Duration(seconds: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18),
                    side: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      righty = change();
                      lefty = change();
                    });
                  },
                  child: Text('Roll'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
