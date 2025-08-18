import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sama/home.dart';
import 'package:sama/sama_culture_screen.dart';
import 'package:sama/sama_media_screen.dart';

class BottomNavegationBar extends StatefulWidget {
  @override
  State<BottomNavegationBar> createState() => _BottomNavegationBarState();
}

class _BottomNavegationBarState extends State<BottomNavegationBar> {
  int currentIndex = 2;
  final List<Widget> Screens = [
    SamaCulture(),
    SamaMedia(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.green[600],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: currentIndex,
        unselectedLabelStyle: const TextStyle(
            fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Tajawal'),
        selectedLabelStyle: const TextStyle(
            fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Tajawal'),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.art_track),
            label: "سما للثقافة والفنون",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.media_bluetooth_off),
            label: "سما ميديا",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "الرئيسية",
          ),
        ],
      ),
      body: Screens[currentIndex],
    );
  }
}
