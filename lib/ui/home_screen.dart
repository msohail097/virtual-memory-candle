
import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:candle/candle%20templetes/candle_templete.dart';
import 'package:candle/ui/login_screen.dart';
import 'package:candle/ui/user_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatpasswordController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobilenoController = TextEditingController();
  bool _isHidden = true;
  @override
  void initState() {

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 1,
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 1,

              decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("assets/images/_Common/BGs/Bg.jpg"),
                    fit: BoxFit.fill,
                  )
              ),


              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [


                    Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.15,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 1,
                      //color: Colors.green,

                      child:

                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[

                            Container(
                              height: MediaQuery.of(context).size.height*0.30,
                              width:  MediaQuery.of(context).size.width*0.25,
                              //color: Colors.red,
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child:
                                Image(image: new AssetImage( "assets/images/_Common/Candle/Candle_00000.png",

                                )),),
                            ),

                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Container(
                                    //color: Colors.blue,
                                    height: MediaQuery.of(context).size.height*0.050,
                                    child: Text('VIRTUAL',
                                        style: GoogleFonts.zillaSlab(
                                          textStyle: TextStyle(
                                            fontSize: 25 *
                                                MediaQuery.textScaleFactorOf(context),
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[50],),)),
                                  ),

                                  Container(
                                    //color: Colors.green,
                                    height: MediaQuery.of(context).size.height*0.050,
                                    child: Text('MEMORY CANDLES',
                                        style: GoogleFonts.zillaSlab(
                                          textStyle: TextStyle(
                                              fontSize: 25 *
                                                  MediaQuery.textScaleFactorOf(
                                                      context),
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey[50]
                                          ),

                                        )),
                                  ),

                                ])


                          ]),
                    ),


                    SizedBox(height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.050,),

                    Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.10,
                      width: MediaQuery.of(context).size.width*0.90,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: new AssetImage( "assets/images/CandleTypes/bg_generic.png",),
                            fit: BoxFit.fill
                        ),
                        //color: Colors.red
                      ),


                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0,0,0),

                            child: Image(image: new AssetImage( "assets/images/_Common/Icons/Cir_photo_empty.png",
                            ),height: 250,),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0,0,0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text('test one',
                                      style: GoogleFonts.zillaSlab(
                                        textStyle: TextStyle(
                                            fontSize: 15 *
                                                MediaQuery.textScaleFactorOf(
                                                    context),
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),

                                      )),
                                ),


                                Text('07/26/2021',
                                    style: GoogleFonts.zillaSlab(
                                      textStyle: TextStyle(
                                          fontSize: 15 *
                                              MediaQuery.textScaleFactorOf(
                                                  context),
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white
                                      ),

                                    )),

                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(70, 0,0,0),

                            child: Image(image: new AssetImage( "assets/images/CandleTypes/Generic_Candle.png",
                            ),height: 50,width: 50,),
                          ),

                        ],
                      ),
                    ),

                    SizedBox(height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.020,),

                    Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.10,
                      width: MediaQuery.of(context).size.width*0.90,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: new AssetImage( "assets/images/CandleTypes/bg_catholic.png",),
                            fit: BoxFit.fill
                        ),
                        //color: Colors.red
                      ),


                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0,0,0),

                            child: Image(image: new AssetImage( "assets/images/_Common/Icons/Cir_photo_empty.png",
                            ),height: 250,),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0,0,0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text('test two',
                                      style: GoogleFonts.zillaSlab(
                                        textStyle: TextStyle(
                                            fontSize: 15 *
                                                MediaQuery.textScaleFactorOf(
                                                    context),
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),

                                      )),
                                ),


                                Text('08/26/2021',
                                    style: GoogleFonts.zillaSlab(
                                      textStyle: TextStyle(
                                          fontSize: 15 *
                                              MediaQuery.textScaleFactorOf(
                                                  context),
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white
                                      ),

                                    )),

                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(70, 0,0,0),

                            child: Image(image: new AssetImage( "assets/images/CandleTypes/Catholic_Cross.png",
                            ),height: 50,width: 50,),
                          ),

                        ],
                      ),
                    ),


                    SizedBox(height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.020,),
                    Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.10,
                      width: MediaQuery.of(context).size.width*0.90,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: new AssetImage( "assets/images/CandleTypes/bg_yarzhiet.png",),
                            fit: BoxFit.fill
                        ),
                        //color: Colors.red
                      ),


                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0,0,0),

                            child: Image(image: new AssetImage( "assets/images/_Common/Icons/Cir_photo_empty.png",
                            ),height: 250,),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0,0,0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text('test three',
                                      style: GoogleFonts.zillaSlab(
                                        textStyle: TextStyle(
                                            fontSize: 15 *
                                                MediaQuery.textScaleFactorOf(
                                                    context),
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),

                                      )),
                                ),


                                Text('09/26/2021',
                                    style: GoogleFonts.zillaSlab(
                                      textStyle: TextStyle(
                                          fontSize: 15 *
                                              MediaQuery.textScaleFactorOf(
                                                  context),
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white
                                      ),

                                    )),

                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(70, 0,0,0),

                            child: Image(image: new AssetImage( "assets/images/CandleTypes/Jewish_Star.png",
                            ),height: 50,width: 50,),
                          ),

                        ],
                      ),
                    ),



                    SizedBox(height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.16,),

                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Templete_Page(),),
                        );

                      },
                      child: Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.10,
                        width: MediaQuery.of(context).size.width*0.90,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: new AssetImage( "assets/images/CandleTypes/Empty_but.png",),
                              fit: BoxFit.fill
                          ),
                          //color: Colors.red
                        ),


                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0,0,0),

                              child: Image(image: new AssetImage( "assets/images/_Common/Icons/Cir_photo_empty.png",
                              ),height: 250,),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0,0,0),
                              child: Center(
                                child: Text('CREATE NEW CANDLE',
                                    style: GoogleFonts.zillaSlab(
                                      textStyle: TextStyle(
                                          fontSize: 20 *
                                              MediaQuery.textScaleFactorOf(
                                                  context),
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      ),

                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //row for button at bottom
                    SizedBox(height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.025,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        InkWell(
                          onTap: (){

                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => UserSettings()));
                          },
                          child: Container(
                            height: MediaQuery
                                .of(context)
                                .size
                                .height * 0.065,
                            width: MediaQuery.of(context).size.width*0.53,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: new AssetImage( "assets/images/_Common/UIElements/Button.png",),
                                  fit: BoxFit.fill
                              ),
                              //color: Colors.red
                            ),


                            child: Center(
                              child: Text('USER SETTINGS',
                                  style: GoogleFonts.zillaSlab(
                                    textStyle: TextStyle(
                                        fontSize: 20 *
                                            MediaQuery.textScaleFactorOf(
                                                context),
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),

                                  )),
                            ),
                          ),
                        ),


                        InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LoginPage()));
                          },
                          child: Container(
                            height: MediaQuery
                                .of(context)
                                .size
                                .height * 0.065,
                            width: MediaQuery.of(context).size.width*0.32,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: new AssetImage( "assets/images/_Common/UIElements/Button.png",),
                                  fit: BoxFit.fill
                              ),
                              //color: Colors.red
                            ),


                            child: Center(
                              child: Text('LOGOUT',
                                  style: GoogleFonts.zillaSlab(
                                    textStyle: TextStyle(
                                        fontSize: 20 *
                                            MediaQuery.textScaleFactorOf(
                                                context),
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),

                                  )),
                            ),
                          ),
                        ),









                      ],)


                  ]
              )
          ),
        ));
  }
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}