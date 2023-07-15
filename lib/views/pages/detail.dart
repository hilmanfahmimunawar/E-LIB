// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kembali'),
        backgroundColor: Color.fromARGB(255, 42, 76, 190),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 18),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/bintang.png',
                width: 200,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Bintang - Tere Liye',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
              // Container(
              //   padding: EdgeInsets.symmetric(horizontal: 28),
              //   child: Text('Klik tombol "Pinjam" untuk meminjam buku'),
              // ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Pinjam'),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 42, 76, 190),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
