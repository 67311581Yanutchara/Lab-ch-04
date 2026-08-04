import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ปฏิบัติการบทที่ 4'),
        backgroundColor: const Color.fromARGB(255, 100, 112, 246),
      ),
      body: Padding(

          padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: 
                  CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      'https://picsum.photos/seed/flutter/400/200',
                      height: 150, // จำกัดความสูง
                      fit: BoxFit.contain,
                      loadingBuilder: (context, child, progress) {
                        return progress == null ? child : const Center(heightFactor: 3, child:
                        CircularProgressIndicator());
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return const Center(
                          heightFactor: 3,
                          child: Text(
                            'ไม่สามารถโหลดรูปภาพได้',
                            style: TextStyle(color: Colors.red)));
                      },
                    ),

                    const SizedBox(height: 20),

                    Image.asset(
                      'assets/images/moshehar-dog-3071334_1920.jpg', // ใช้พาธ asset จริงของคุณ
                     height: 100,
                     errorBuilder: (context, error, stackTrace) {
                      return const Text(
                        'เกิดข้อผิดพลาดในการโหลด asset', 
                        style: TextStyle(color: Colors.red));
                     },
                    ),

                    const SizedBox(height: 20),

                    Container( // กล่องสีอำพันจากแล็บ บทที่ 3
                      width: 300.0, // หรือปรับตามต้องการ
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.amber.shade100, // สีอำพันอ่อนลงเล็กน้อย
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        'สวัสดี วิดเจ็ต Flutter!',
                       textAlign: TextAlign.center,
                       style: GoogleFonts.lato(
                         fontSize: 20.0,
                         fontWeight: FontWeight.bold,
                         color: Colors.black87,
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(onPressed: () { print('กดปุ่ม Elevated'); },
                        child: const Text('Elevated'),
                        ),

                        const SizedBox(width: 10),
                        OutlinedButton(onPressed: () { print('กดปุ่ม Outlined'); },
                        child: const Text('Outlined'),
                        ),

                        const SizedBox(width: 10),
                        TextButton(onPressed: () { print('กดปุ่ม Text'); },
                        child: const Text('Text'),
                        ),

                      ],
                    ),

                    const SizedBox(height: 10),
                    IconButton(onPressed: () { print('กดไอคอน Info'); },
                    icon: const Icon(Icons.info_outline),
                    iconSize: 30,
                    tooltip: 'ข้อมูล',
                    color: Colors.blueGrey,
                    ),

                  ],
              ),
      ),
    );
  }
}