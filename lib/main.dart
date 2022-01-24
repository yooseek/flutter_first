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
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                SizedBox(height: 50,),
                Image.asset("assets/test.jpg"),
                SizedBox(height: 40,),
                Text("NeedLeWork", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Text("is seek",style: TextStyle(fontSize: 20),),
                SizedBox(height: 20,),
                Text("HandCreft"),
                SizedBox(height: 50,),
                RaisedButton(
                  onPressed: (){print('버튼클릭됨');},
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(400)),
                  child: Text('Get Start',
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                  ),
                  color: Colors.black,

                )
              ],
            ),
          ),
          )
        ),
    );
  }

  Widget buildMaterialApp(int index) {
    return Column(
      children: [
        ListTile(
        title: Text('제목'),
        subtitle: Text("부제목"),
        leading: Icon(Icons.account_box_sharp),
        onTap: (){
          print('눌러짐');
        },
      ),
      Container(
      height: 5,
      color: Colors.red,
      )]
    );
  }

}