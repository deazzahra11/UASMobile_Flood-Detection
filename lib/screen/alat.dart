import 'package:flutter/material.dart';

class alat extends StatefulWidget {
  const alat({super.key});

  @override
  State<alat> createState() => _alatState();
}

class _alatState extends State<alat> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 70, 105, 158),
        title:Text(
          "Peralatan"
        ),  
      ),
       body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
               Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 101, 214, 201),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                          ),
                        ],
                      ),
                  child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                 Container(
                  
                  width: 150, // Sesuaikan dengan lebar gambar yang diinginkan
                  height: 120, // Sesuaikan dengan tinggi gambar yang diinginkan
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage('assets/gsm.png'), // Ganti dengan path gambar yang sesuai
                      fit: BoxFit.cover,
                        ),
                      ),
                    ),
                     Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              
                      SizedBox(height: 2),
                      Text(
                        'Ultrasonik GSM adalah ',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'teknologi yang menggabungkan ',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                       'sensor ultrasonik dengan modul',
                        style: TextStyle(
                         fontSize: 12,
                         color: Colors.white,
                        ),
                      ),
                     SizedBox(height: 2),
                      Text(
                        'GSM untuk mendeteksi dan',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'peringatan tentang potensi banjir',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  ],
                 ),
                ),
                 SizedBox(height: 20),
               Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 71, 152, 151),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                          ),
                        ],
                      ),
                  child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              
                      SizedBox(height: 2),
                      Text(
                        'Servo adalah jenis motor yang ',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'digunakan dalam aplikasi deteksi',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                       'banjir untuk menggerakkan',
                        style: TextStyle(
                         fontSize: 12,
                         color: Colors.white,
                        ),
                      ),
                     SizedBox(height: 2),
                      Text(
                        'mekanisme seperti katup atau',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'pintu air.',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                 Container(
                  
                  width: 150, // Sesuaikan dengan lebar gambar yang diinginkan
                  height: 120, // Sesuaikan dengan tinggi gambar yang diinginkan
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage('assets/servo.png'), // Ganti dengan path gambar yang sesuai
                      fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    

                  ],
                 ),
                ),
                SizedBox(height: 20),
                 Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 101, 214, 212),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                          ),
                        ],
                      ),
                  child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                 Container(
                  
                  width: 150, // Sesuaikan dengan lebar gambar yang diinginkan
                  height: 120, // Sesuaikan dengan tinggi gambar yang diinginkan
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage('assets/esp32.png'), // Ganti dengan path gambar yang sesuai
                      fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    
                     Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              
                      SizedBox(height: 2),
                      Text(
                        'ESP32-CAM dapat digunakan',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'untuk memantau tingkat air',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                       'di suatu area yang rentan',
                        style: TextStyle(
                         fontSize: 12,
                         color: Colors.white,
                        ),
                      ),
                     SizedBox(height: 2),
                      Text(
                        'terhadap banjir.',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  ],
                 ),
                ),
            ],
          ),
       ),
    );
  }
}