// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              borderSide: BorderSide.none),
          backgroundColor: Color(0xffFFC806),
          elevation: 0,
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(children: [
            Container(
                margin: EdgeInsets.only(right: 20, top: 20),
                child: Text(
                  'المطاعم',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 10,
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/Rectangle.png',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Text('اسم المطعم'),
                        alignment: Alignment.bottomRight,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xffFFC806),
                                  size: 15,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Icon(
                                  Icons.schedule,
                                  size: 15,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 15,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 159 / 190,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
            ),
          ]),
        ));
  }
}
