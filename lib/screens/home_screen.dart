import 'package:bitcore/screens/employee_screen.dart';
import 'package:flutter/material.dart';
import 'admin_screen.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: Image.asset('images/logo1.png'),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  //color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 220,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(context, AdminScreen.id);
                        });
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'Admin',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.blue),
                          ),
                        ),
                        //margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xFF1D1E33),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: 150,
                        //width: 190,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(context, EmployeeScreen.id);
                        });
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'Employee',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.blue),
                          ),
                        ),
                        //margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xFF1D1E33),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: 150,
                        // width: 190,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
