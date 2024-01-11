import 'package:flutter/material.dart';
import 'package:iot_praktikum/screen/alat.dart';
import 'package:iot_praktikum/screen/homepage.dart';
import 'package:iot_praktikum/widget/coba.dart';
import 'package:iot_praktikum/widget/navbar_roots.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Navbar(),
    );
  }
}
