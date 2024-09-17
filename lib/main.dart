import 'package:flutter/material.dart';
import 'home_page.dart'; // นำเข้าหน้า Home ใหม่

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), // ใช้หน้า Home เป็นหน้าเริ่มต้น
    );
  }
}
