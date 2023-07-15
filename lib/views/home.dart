// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import '../views/pages/index0.dart';
import '../views/pages/index1.dart';
import '../views/pages/index2.dart';
import '../views/pages/index3.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final screens = [
    Index0Page(),
    Index1Page(),
    Index2Page(),
    Index3Page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Color.fromARGB(255, 219, 219, 219),
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
        child: NavigationBar(
          height: 65,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            NavigationDestination(
              icon: Icon(Icons.download),
              label: 'Download',
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
