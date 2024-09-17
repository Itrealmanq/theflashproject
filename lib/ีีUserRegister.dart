import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'user_register.dart'; // เพิ่มการนำเข้า UserRegister


class UserRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Register'),
        backgroundColor: Color(0xFFFFE600), // ใช้รหัสสี FFE600 สำหรับ AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // เพิ่มฟิลด์กรอกข้อมูลที่นี่
            Text(
              'Register',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Car Registration',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // ฟังก์ชันที่ทำงานเมื่อกดปุ่ม
              },
              child: Text('Register'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.red, // ตัวหนังสือสีขาว
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0), // ขอบมน
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
