import 'package:flutter/material.dart';

void main() { // main thread 는 runApp을 실행시키고 종료됩니다.
  runApp(FirstApp()); // 비동기로 실행됨 ( 이벤트 루프에 등록됨 )
}

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // ios는 CupertinoApp
      // AndroidApp 을 만들꺼에요,
      home: SafeArea(
        child: Scaffold(
          body: HomeApp(),
        ),
      ),
    );
  }
}

class HomeApp extends StatelessWidget {
  Widget build(BuildContext context){
    var m = MediaQuery.of(context);
    var safeArea = m.size.height - AppBar().preferredSize.height - m.padding.top - m.padding.bottom;
    print("넓이 : ${m.size.width}");
    print("높이 : ${m.size.height}");
    print("패딩 탑 : ${safeArea}");
    var test = AppBar().preferredSize.height;
    print("앱바 사이즈 : ${test}");
    return Column(
      children: [
        Container(
          height: (m.size.height-24) * 0.7,
          color: Colors.green,
        ),
        Container(
          height: (m.size.height-24) * 0.2,
          color: Colors.red,
        ),
        Container(
          height: (m.size.height-24) * 0.1,
          color: Colors.amber,
        )
      ],
    );
  }
}