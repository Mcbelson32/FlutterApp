// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => MyProvider(),
        child: MyHomePage(title: "home page"),
      ),
      debugShowCheckedModeBanner: false,
    ));

class MyProvider with ChangeNotifier {
  int mcLvl = 0;

  void increment() {
    mcLvl++;
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MyProvider>(context);
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myProvider.increment();
        },
        backgroundColor: Colors.grey[800],
        tooltip: "add Level",
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg"),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 50.0,
              // thickness: 0.9,
              color: Colors.grey[400],
            ),
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
                'Makbel',
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
                "${myProvider.mcLvl}",
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
                    fontSize: 18.0,
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
