import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iot_praktikum/screen/alat.dart';
import 'package:iot_praktikum/screen/homepage.dart';
import 'package:iot_praktikum/screen/profile.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    home(),
    alat(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xFFA596E8),
        index: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          Icon(
            Icons.home,
             color: Color.fromARGB(255, 45, 110, 195),
             ),
          Icon(
            Icons.error_rounded,
             color: Color.fromARGB(255, 45, 110, 195),),
          Icon(
            Icons.person,
             color: Color.fromARGB(255, 45, 110, 195),
             ),
        ],
      ),
      body: _screens[_selectedIndex],
    );
  }
}