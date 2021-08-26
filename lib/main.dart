import 'package:candle/ui/login_screen.dart';
import 'package:flutter/material.dart';



void main() { runApp(new MaterialApp( home: new MyApp(), )); }

class MyApp extends StatefulWidget {

  @override _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State {
  @override void initState() {
    super.initState();
    new Future.delayed( const Duration(seconds: 5), () =>
        Navigator.pushReplacement( context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //backgroundColor: Colors.white,
        body: Container(
            height: MediaQuery.of(context).size.height*1,
            width: MediaQuery.of(context).size.width*1,
            child: Image.asset("assets/images/_Common/Candle/GlobeSpinAnim/GlobeSpin01.gif",
                height: 100,
                width: 100,
                gaplessPlayback: true,
                fit: BoxFit.fill
            )
        ));
  }
}