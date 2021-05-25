import 'package:flutter/material.dart';

class QRScreen extends StatefulWidget {
  static const String id = 'QRScreen';

  @override
  _QRScreenState createState() => _QRScreenState();
}

class _QRScreenState extends State<QRScreen> {
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
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 15),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFF9D9DA2),
              ),
              height: 400,
              width: 300,
              child: Center(
                child: Image.asset('images/qrcode.png'),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'Scan Me',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
