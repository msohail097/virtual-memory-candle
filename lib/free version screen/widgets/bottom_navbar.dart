
import 'package:candle/free%20and%20paid%20version/freeandpaidversion_jews.dart';
import 'package:candle/ui/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottom_Navbar extends StatefulWidget {

  @override
  _welcomeUserCathelicPageState createState() => _welcomeUserCathelicPageState();
}

class _welcomeUserCathelicPageState extends State<Bottom_Navbar> {
  @override
  void initState() {

  }
  @override
  Widget build(BuildContext context) {
    return

      Padding(
        padding: const EdgeInsets.fromLTRB(100,0,0,0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Image(image: new AssetImage( "assets/images/_Common/Icons/home.png",
              ),height: 45,width: 45,),
            ),

            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FreeAndPaidVersionJews()),
                );
              },
              child: Image(image: new AssetImage( "assets/images/_Common/Icons/Fornt_button.png",
              ),height: 45,width: 45,),
            ),

          ],
        ),
      );

  }
}