import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

bool secred = false;
String number = '';
int real;

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Calculator',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          backgroundColor: Colors.grey[800],
        ),
        body: calc(),
      ),
    ),
  );
}

class calc extends StatefulWidget {
  @override
  _calcState createState() => _calcState();
}

class _calcState extends State<calc> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                height: 80,
                color: Colors.black,
                child: Text(
                  number,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                child: RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      if (secred == true) number = '123446';
                      number = '';
                    });
                  },
                  elevation: 2.0,
                  fillColor: Colors.grey,
                  child: Text(
                    'AC',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.all(30.0),
                  shape: CircleBorder(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Colors.grey,
                  child: Text(
                    '+/-',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.all(30.0),
                  shape: CircleBorder(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Colors.grey,
                  child: Text(
                    '%',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.all(30.0),
                  shape: CircleBorder(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Colors.orange,
                  child: Text(
                    '/',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(30.0),
                  shape: CircleBorder(),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                child: RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      number += '7';
                    });
                  },
                  elevation: 2.0,
                  fillColor: Colors.grey[800],
                  child: Text(
                    '7',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(30.0),
                  shape: CircleBorder(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      number += '8';
                    });
                  },
                  elevation: 2.0,
                  fillColor: Colors.grey[800],
                  child: Text(
                    '8',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(30.0),
                  shape: CircleBorder(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      number += '9';
                    });
                  },
                  elevation: 2.0,
                  fillColor: Colors.grey[800],
                  child: Text(
                    '9',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(30.0),
                  shape: CircleBorder(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Colors.orange,
                  child: Text(
                    'X',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(30.0),
                  shape: CircleBorder(),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                child: RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      number += '4';
                    });
                  },
                  elevation: 2.0,
                  fillColor: Colors.grey[800],
                  child: Text(
                    '4',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(30.0),
                  shape: CircleBorder(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      number += '5';
                    });
                  },
                  elevation: 2.0,
                  fillColor: Colors.grey[800],
                  child: Text(
                    '5',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(30.0),
                  shape: CircleBorder(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      number += '6';
                    });
                  },
                  elevation: 2.0,
                  fillColor: Colors.grey[800],
                  child: Text(
                    '6',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(30.0),
                  shape: CircleBorder(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Colors.orange,
                  child: Text(
                    '-',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(30.0),
                  shape: CircleBorder(),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                child: RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      number += '1';
                    });
                  },
                  elevation: 2.0,
                  fillColor: Colors.grey[800],
                  child: Text(
                    '1',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(30.0),
                  shape: CircleBorder(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      number += '2';
                    });
                  },
                  elevation: 2.0,
                  fillColor: Colors.grey[800],
                  child: Text(
                    '2',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(30.0),
                  shape: CircleBorder(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      number += '3';
                    });
                  },
                  elevation: 2.0,
                  fillColor: Colors.grey[800],
                  child: Text(
                    '3',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(30.0),
                  shape: CircleBorder(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Colors.orange,
                  child: Text(
                    '+',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(30.0),
                  shape: CircleBorder(),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                child: RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      number += '0';
                    });
                  },
                  elevation: 2.0,
                  fillColor: Colors.grey[800],
                  child: Text(
                    '0',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(30.0),
                  shape: RoundedRectangleBorder(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Colors.grey[800],
                  child: Text(
                    '.',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(30.0),
                  shape: CircleBorder(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Colors.orange,
                  child: Text(
                    '=',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(30.0),
                  shape: CircleBorder(),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
