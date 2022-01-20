import 'package:flutter/material.dart';

void main() {
  runApp(FirstApp());
}
class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp( // AndroidApp 을 만들꺼에요
      home: SafeArea(
        child: Scaffold(   // 기본 구조를 들고 있어요.
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("First App"),
            leading: Icon(Icons.menu),
          ),
          body: Text("Hello"),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("버튼 클릭됨");
            },
            child: Text("button"),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(label : "hello",icon: Icon(Icons.access_alarm_rounded,)),
              BottomNavigationBarItem(label : "hello",icon: Icon(Icons.access_alarm_rounded,)),
            ],
          ),

        ),
      ),
    );
  }
}


