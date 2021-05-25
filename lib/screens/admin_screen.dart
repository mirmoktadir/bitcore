import 'package:flutter/material.dart';
import 'package:bitcore/constants.dart';
import 'package:bitcore/components/rounded_button.dart';
import 'creating_employee_screen.dart';

class AdminScreen extends StatefulWidget {
  static String id = 'AdminScreen';

  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  String email;
  String password;
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
            Flexible(
              child: Hero(
                tag: 'admin',
                child: Container(
                  height: 200,
                  child: Image.asset('images/admin.png'),
                ),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
              decoration:
                  kInputTextDecoration.copyWith(hintText: 'Enter your email'),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
              decoration: kInputTextDecoration.copyWith(
                  hintText: 'Enter your password'),
            ),
            SizedBox(height: 24),
            RoundedButton(
              text: 'Login',
              color: Colors.blue[900],
              onPressed: () {
                setState(() {
                  if (email == 'admin@admin.com' && password == '1234') {
                    Navigator.pushNamed(context, CreatingEmployee.id);
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
