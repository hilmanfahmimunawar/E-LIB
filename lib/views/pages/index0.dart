// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Index0Page extends StatelessWidget {
  const Index0Page({super.key});

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
                width: 80,
                child: Image.asset(
                  'assets/logo.png',
                  width: 180,
                ),
              ),
              // Text(
              //   'E-LIB APP',
              //   style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
              // ),
              // Text(
              //   'fahrulfahreza123',
              //   style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
              // ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 18),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Search by title, authors, etc...',
                  ),
                ),
              ),
              Text(
                'DISCOVER NEW',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 150,
                      child: Image.asset(
                        'assets/pergi.png',
                        width: 200,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 150,
                      child: Image.asset(
                        'assets/pulang1.png',
                        width: 200,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 150,
                      child: Image.asset(
                        'assets/bintang.png',
                        width: 200,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'CATEGORIES',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Sci-Fi',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white10,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Education',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white10,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Fiction',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'TRENDINGS',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 150,
                      child: Image.asset(
                        'assets/matahari.png',
                        width: 200,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 150,
                      child: Image.asset(
                        'assets/nebula.png',
                        width: 200,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 150,
                      child: Image.asset(
                        'assets/hujan.png',
                        width: 200,
                      ),
                    ),
                  ],
                ),
              ),
              // Image.asset('assets/matahari.png'),
              // SizedBox(
              //   height: 10,
              // ),
              // Center(
              //   child: Text('Harry Potter and the Goblet of Fire'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
