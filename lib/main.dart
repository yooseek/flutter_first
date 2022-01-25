import 'dart:io';

import 'package:flutter/material.dart';

void main() { // main thread 는 runApp을 실행시키고 종료됩니다.
  runApp(FirstApp()); // 비동기로 실행됨 ( 이벤트 루프에 등록됨 )
}

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // ios는 CupertinoApp
      // AndroidApp 을 만들꺼에요,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back),
            title: const Text("쿠키 Card",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: "CR"),
            ),
            centerTitle: true,
            actions: [
              Row(
                children: [
                  Icon(Icons.shopping_cart_rounded),
                  SizedBox(width: 10,)
                ],
              ),
            ],
          ),
          body: Column(
            children: [
              ClipRRect(borderRadius: BorderRadius.circular(10.0),)
            ],
          )

        ),
      ),
    );
  }
}