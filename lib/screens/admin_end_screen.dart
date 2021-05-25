import 'package:bitcore/screens/creating_employee_screen.dart';
import 'package:bitcore/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AdminEnding extends StatefulWidget {
  static const String id = 'AdminEnding';

  @override
  _AdminEndingState createState() => _AdminEndingState();
}

class _AdminEndingState extends State<AdminEnding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bitcore'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 48,
            ),
            Expanded(
              flex: 3,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, CreatingEmployee.id);
                  });
                },
                child: Container(
                  child: Center(
                    child: Text(
                      'Create Another Employee',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.blue),
                    ),
                  ),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  //height: 270,
                  //width: 190,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              flex: 2,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, HomeScreen.id);
                  });
                },
                child: Container(
                  child: Center(
                    child: Text(
                      'Logout',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.blue),
                    ),
                  ),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  //height: 270,
                  //width: 190,
                ),
              ),
            ),
            SizedBox(
              height: 24,
            )
          ],
        ),
      ),
    );
  }
}
