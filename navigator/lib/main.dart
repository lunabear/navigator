import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'navigator',
      theme: ThemeData(),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First page'),
        backgroundColor: Colors.blue,
        centerTitle: false,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            /*
            Navigator.push(context2,
                MaterialPageRoute(builder: (BuildContext context) {
              return SecondPage();
            }));
            */
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context2) =>
                        SecondPage())); //라우트시 안드로이드는 페이드인 페이드 아웃 애니메이션이있고
            //아이폰의 경우 좌우로 흔들리는애니메이션이 있음
          },
          child: Text('Go to the Second Page'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
        backgroundColor: Colors.blue,
        centerTitle: false,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(ctx);
          },
          child: Text('Go to the First Page'),
        ),
      ),
    );
  }
}
