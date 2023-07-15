// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, deprecated_member_use

import '../views/login.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.all(30.0),
              child: Image.asset('assets/logo.png')),
          Container(
            margin: EdgeInsets.only(left: 50),
            child: Text(
              'Mulai Perjalanan Anda Dengan Buku',
              style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 28.0),
            child: Text(
              'E-Perpus adalah aplikasi perpustakaan digital yang menyewakan buku berbasis mobile.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            width: 150,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                    (Route<dynamic> route) => false);
              },
              child: Text('Get Started'),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 42, 76, 190),
              ),
            ),
          )
        ],
      ),
    );
  }
}
