import 'package:flutter/material.dart';
import 'package:iot_praktikum/widget/grafik-bulanan.dart';
import 'package:iot_praktikum/widget/grafik_harian.dart';
import 'package:iot_praktikum/widget/grafik_mingguan.dart';
import 'package:iot_praktikum/widget/grafik_tahunan.dart';
import 'package:loop_page_view/loop_page_view.dart';

final Set<MaterialColor> colors = {
  Colors.blueGrey,
  Colors.blue,
  Colors.cyan,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.red,
  Colors.purple,
};

class Coba extends StatefulWidget {
  @override
  _CobaState createState() => _CobaState();
}

class _CobaState extends State<Coba> {
  final List<bool> isSelected =
      colors.map((e) => e == colors.last ? true : false).toList();
  LoopScrollMode selectedScrollMode = LoopScrollMode.shortest;
  final LoopPageController controller = LoopPageController(
    scrollMode: LoopScrollMode.shortest,
    activationMode: LoopActivationMode.immediate,
  );

  double expenseGraphWidth = 300.0;
  double expenseGraphHeight = 150.0;
  double harianWidth = 400.0;
  double harianHeight = 150.0; // Ubah tinggi halaman Harian sesuai kebutuhan



  @override
  Widget build(BuildContext context) {
    final int selectedIndex = isSelected.indexOf(
      isSelected.firstWhere((element) => element == true),
    );
     

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
           child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: expenseGraphWidth,
                height: harianHeight + 100.0, // Menambahkan 100.0 untuk memberikan ruang tambahan
                child: LoopPageView.builder(
                  controller: controller,
                  itemCount: 4,
                  itemBuilder: (_, index) {
                    if (index == 0) {
                      return tahunan();
                    } else if (index == 1) {
                      return harian();
                    }else if (index == 2) {
                      return ExpenseGraphDesign();
                    }else if (index == 3) {
                      return bulanan();
                    }
                    return Container();
                  },
                ),
              ),
              SizedBox(height: 15),
                Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(bottom: 30, top:20,right: 20, left: 10),
                            
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  spreadRadius: 4,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                                        primary: Colors.white,
                                        onPrimary: Colors.black,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 150, 218, 232), width: 2.0),
                                      ),
                                      child: Text(
                                        'Harian',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFFA596E8),
                                        ),
                                      ),
                                      onPressed: () {
                                        controller.animateToPage(
                                          1,
                                          duration: Duration(milliseconds: 400),
                                          curve: Curves.easeIn,
                                        );
                                      },
                                    ),
                                    SizedBox(width: 10),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                                        primary: Colors.white,
                                        onPrimary: Colors.black,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 150, 218, 232), width: 2.0),
                                      ),
                                      child: Text(
                                        'Mingguan',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFFA596E8),
                                        ),
                                      ),
                                      onPressed: () {
                                        controller.animateToPage(
                                          2,
                                          duration: Duration(milliseconds: 400),
                                          curve: Curves.easeIn,
                                        );
                                      },
                                    ),
                                    SizedBox(width: 16),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                                        primary: Colors.white,
                                        onPrimary: Colors.black,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 150, 218, 232), width: 2.0),
                                      ),
                                      child: Text(
                                        'Bulanan',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFFA596E8),
                                        ),
                                      ),
                                      onPressed: () {
                                        controller.animateToPage(
                                          3,
                                          duration: Duration(milliseconds: 400),
                                          curve: Curves.easeIn,
                                        );
                                      },
                                    ),
                                    SizedBox(width: 16),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                                        primary: Colors.white,
                                        onPrimary: Colors.black,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 150, 218, 232), width: 2.0),
                                      ),
                                      child: Text(
                                        'Tahunan',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFFA596E8),
                                        ),
                                      ),
                                      onPressed: () {
                                        controller.animateToPage(
                                          0,
                                          duration: Duration(milliseconds: 400),
                                          curve: Curves.easeIn,
                                        );
                                      },
                                    ),
                                  ],
                                ),
               SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start, // Mengatur posisi ke pojok kiri
                  children: [
                    InkWell(
                      onTap: () {
                        // Aksi yang diambil ketika kontainer diklik
                      },
                      
                      child: Container(
                        margin: EdgeInsets.only(right: 10), // Memberikan jarak antar container
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.75),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                          color: Color(0xFFA596E8), // Warna border
                          width: 2.0, // Lebar border
                        ),
                           boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6,
                              spreadRadius: 4,
                                      ),
                                    ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5), // Memberikan jarak di antara elemen
                            Text(
                              "Traffic Tinggi bulanan",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(150, 203, 232, 1),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                             SizedBox(height: 10),
                            Row(
                            children: [
                              SizedBox(width: 2),
                              Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(150, 203, 232, 1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Juli",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(150, 203, 232, 1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 40),
                              Text(
                                "150 CM",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(150, 203, 232, 1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 2),
                              Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(150, 203, 232, 1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Agustus",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(150, 203, 232, 1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                "100 CM",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(150, 203, 232, 1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                           Row(
                            children: [
                              SizedBox(width: 2),
                              Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(150, 203, 232, 1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Januari",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(150, 203, 232, 1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 22),
                              Text(
                                "50 CM",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF698DCC),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                    SizedBox(height: 20),
                    Material(
                    color: Color(0xFF698DCC),
                    borderRadius: BorderRadius.circular(20),
                      child: Padding(
                        padding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        child: Center(
                          child: Text(
                            "150 %",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ),
                    
                         ),
                          Padding(
                            padding: EdgeInsets.only(left: 10), // Sesuaikan dengan kebutuhan Anda
                            child: Text(
                              "Juli",
                              style: TextStyle(
                                color: Color(0xFF698DCC),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Aksi yang diambil ketika kontainer diklik
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6,
                              spreadRadius: 4,
                                      ),
                                    ],
                          image: DecorationImage(
                            image: AssetImage("assets/Group.png"), // Ganti dengan path gambar yang sesuai
                             fit: BoxFit.none,
                             ),
                                  ),
                                 child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5), // Memberikan jarak di antara elemen
                            Text(
                              "Traffic Tinggi tahunan",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF97ECFF),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                            children: [
                              SizedBox(width: 2),
                              Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                "2019",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 17),
                              Text(
                                "170 CM",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 2),
                              Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                "2020",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 13),
                              Text(
                                "100 CM",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                           Row(
                            children: [
                              SizedBox(width: 2),
                              Text(
                                "3",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                "2023",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 18),
                              Text(
                                "50 CM",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                    SizedBox(height: 20),
                         Text(
                            "150 %",
                            style: TextStyle(
                              color: Color(0xFF97ECFF),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                       
                          Padding(
                            padding: EdgeInsets.only(left: 10), // Sesuaikan dengan kebutuhan Anda
                            child: Text(
                              "Juli",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ],
                        ),
                                ),

                              ),
                            ],
                           ),
                        
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}