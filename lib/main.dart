import 'package:bitcore/screens/admin_end_screen.dart';
import 'package:bitcore/screens/admin_screen.dart';
import 'package:bitcore/screens/creating_employee_screen.dart';
import 'package:bitcore/screens/employee_screen.dart';
import 'package:bitcore/screens/qr_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Bitcore());
}

class Bitcore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        AdminScreen.id: (context) => AdminScreen(),
        CreatingEmployee.id: (context) => CreatingEmployee(),
        AdminEnding.id: (context) => AdminEnding(),
        EmployeeScreen.id: (context) => EmployeeScreen(),
        QRScreen.id: (context) => QRScreen(),
      },
    );
  }
}
