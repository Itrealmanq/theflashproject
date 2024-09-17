import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:theflash/%E0%B8%B5%E0%B8%B5UserRegister.dart';
import 'user_register.dart'; // เพิ่มการนำเข้า UserRegister


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE600), // ใช้รหัสสี FFE600 สำหรับ AppBar
      ),
      backgroundColor: Color(0xFFFFE600), // ใช้รหัสสี FFE600 สำหรับพื้นหลังของ Scaffold
      body: Padding(
        padding: const EdgeInsets.all(20.0), // เพิ่มระยะห่างรอบ ๆ
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // จัดตำแหน่งให้ข้อความอยู่ตรงกลาง
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 300, // ความกว้างของรูปภาพ
                height: 300, // ความสูงของรูปภาพ
                margin: EdgeInsets.only(top: 50, left: 28), // ระยะห่างจากด้านบนและด้านซ้าย
                child: Image.asset(
                  'assets/images/red.png', // แสดงรูปภาพ
                  fit: BoxFit.cover, // ปรับขนาดรูปภาพให้พอดีกับพื้นที่
                ),
              ),
            ),
            SizedBox(height: 20), // ระยะห่างระหว่างรูปภาพและข้อความ
            Text(
              'Login',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white, // สีขาว
                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0), // เพิ่มเงา
                    blurRadius: 3.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // ระยะห่างระหว่างข้อความ "Login" และฟอร์มกรอกข้อมูล
            TextField(
              decoration: InputDecoration(
                filled: true, // ช่องกรอกเป็นสีขาว
                fillColor: Colors.white,
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0), // ขอบมน
                ),
              ),
            ),
            SizedBox(height: 10), // ระยะห่างระหว่างช่องกรอก username และ password
            TextField(
              decoration: InputDecoration(
                filled: true, // ช่องกรอกเป็นสีขาว
                fillColor: Colors.white,
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0), // ขอบมน
                ),
              ),
              obscureText: true, // ซ่อนข้อความในช่องกรอก password
            ),
            SizedBox(height: 20), // ระยะห่างระหว่างช่องกรอกข้อมูลและปุ่ม
            SizedBox(
              width: double.infinity, // ขยายปุ่มให้ยาวเท่ากับช่องกรอกข้อมูล
              height: 58, // ความสูงที่ตรงกับช่อง TextField (สามารถปรับเพิ่มได้)
              child: ElevatedButton(
                onPressed: () {
                  // นำทางไปยังหน้า UserRegister
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserRegister()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                      255, 180, 31, 21), // เปลี่ยนเป็นสีแดง
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0), // ขอบมน
                  ),
                  shadowColor: Colors.black, // สีเงาของปุ่ม
                  elevation: 5, // ระดับเงา
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white, // ตัวหนังสือสีขาว
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0), // เพิ่มเงาให้ตัวหนังสือ
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // ระยะห่างระหว่างปุ่มและข้อความ
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'If you don\'t have an account yet, register to become a ',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold, // ทำให้ฟร้อนหนาขึ้น
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'user',
                      style: TextStyle(color: Colors.red), // เปลี่ยนสีคำว่า user เป็นสีแดง
                    ),
                    TextSpan(
                      text: ' or ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'rider',
                      style: TextStyle(
                          color: Colors.red, // เปลี่ยนสีคำว่า rider เป็นสีแดง
                          decoration: TextDecoration.underline), // ขีดเส้นใต้
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // นำทางไปยังหน้า UserRegister
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => UserRegister()),
                          );
                        },
                    ),
                    TextSpan(
                      text: '.',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
