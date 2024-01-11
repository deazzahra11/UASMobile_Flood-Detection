import 'package:flutter/material.dart';
import 'package:iot_praktikum/widget/coba.dart';
import 'package:iot_praktikum/widget/grafik_mingguan.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
        color: Colors.white,
         padding: EdgeInsets.all(10),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/Group1.png"),
                ),
                SizedBox(width: 7),
                Text(
                  "Flood",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 143),
                Text(
                  "Dey",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 7),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/PInfo.png"),
                ),
              ],
            ),
          SizedBox(height: 10),
            Center(
              child: Text(
                "Statistic Ketinggian",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(210, 78, 211, 226),
                ),
              ),
            ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 0, top: 0),
            child: Text(
              "Ketinggian",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87
              ),
            ),
          ),
             SizedBox(height: 10),
            Expanded(
              child: Coba(),
            ),
            
          ],
        ),
      ),
    );
  }
}