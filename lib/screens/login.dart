// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:golden_house_flutter_multi_pages/screens/homeScreen.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تسجيل الدخول'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: 'اسم المستخدم', border: OutlineInputBorder()),
                ),
                SizedBox(height: 20),
                TextField(
                    decoration: InputDecoration(
                  hintText: 'كلمة المرور',
                  border: OutlineInputBorder(),
                )),
                SizedBox(height: 20),
                Center(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                        },
                        child: Text('تسجيل الدخول')))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
