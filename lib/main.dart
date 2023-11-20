// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyHomePage(title: "home page"),
      debugShowCheckedModeBanner: false,
    ));

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'NAME: ',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'Mcbel',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Mc's CURRENT LEVEL: ",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                '8',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "abc123@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
