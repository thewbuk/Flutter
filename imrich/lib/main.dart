import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Center(child: Text('I am Bartek')),
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/gull.jpg'),
        ),
      ),
    )),
  );
}
