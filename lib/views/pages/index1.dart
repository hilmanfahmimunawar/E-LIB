// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import '../pages/detail.dart';
import 'package:flutter/material.dart';

class Index1Page extends StatelessWidget {
  const Index1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 65, horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Search by title, authors, etc...',
                    ),
                  ),
                ),
                Text('Recommendation'),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(),
                      ),
                    );
                  },
                  child: Image.asset('assets/bintang.png'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Bintang By Tere Liye',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(Icons.star),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset('assets/pulang1.png'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Pulang By Tere Liye',
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset('assets/pergi.png'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Pergi By Tere Liye',
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
