import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/me.jpeg'),
                //backgroundImage: ,
              ),
              Text(
                'Wojciech \n'
                'Bandzerewicz',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  letterSpacing: 1,
                  color: Colors.white,
                  fontFamily: 'PoiretOne',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Developer',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  letterSpacing: 2,
                  color: Colors.white70,
                  fontFamily: 'PoiretOne',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
                width: 200,
                child: Divider(
                  color: Colors.teal.shade100,
                  thickness: 1,

                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 2),
                  leading: Icon(
                    Icons.call,
                    size: 40,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+44 (0) 7503264000',
                    style: TextStyle(
                      fontSize: 22,
                      letterSpacing: 2,
                      color: Colors.teal,
                      fontFamily: 'Boloo2',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                color: Colors.white,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 2),
                  leading: Icon(
                    Icons.email,
                    size: 40,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'wojtekbandz@gmail.com',
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      letterSpacing: 2,
                      color: Colors.teal,
                      fontFamily: 'Boloo2',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}