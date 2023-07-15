// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Index2Page extends StatelessWidget {
  const Index2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 65, horizontal: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 18),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Search ....',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 150,
                    child: Image.asset('assets/bintang.png'),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      Text(
                        'Bintang',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'By Tere Liye',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        'Klik Untuk Baca Sekarang',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 42, 76, 190)),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 150,
                    child: Image.asset('assets/pulang1.png'),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      Text(
                        'Pulang',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'By Tere Liye',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        'Klik Untuk Baca Sekarang',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 42, 76, 190)),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
