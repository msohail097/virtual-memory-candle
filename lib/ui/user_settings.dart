
import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:candle/candle%20templetes/candle_templete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';
import 'new_user.dart';


class UserSettings extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<UserSettings> {
  TextEditingController nameController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  void initState() {

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
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
                          .height * 0.020,),


                      Container(
                        //color: Colors.green,
                        height: MediaQuery.of(context).size.height*0.050,
                        child: Text('USER SETTINGS',
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


                      SizedBox(height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.025,),

                      Container(
                        height: MediaQuery.of(context).size.height*0.075,
                        width: MediaQuery.of(context).size.width*0.80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: new AssetImage( "assets/images/_Common/UIElements/Band.png",),
                              fit: BoxFit.fill
                          ),
                          //color: Colors.red
                        ),


                        child: InkWell(
                          onTap: (){

                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10,0, 0, 0),
                            child: AutoSizeTextField(
                              controller: nameController,
                              fullwidth: true,
                              minFontSize: 16.0,
                              style: TextStyle(
                                  fontSize: 18.0,
                                  height: 1.5,
                                  color: Colors.white
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'User Name',
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[500],
                                ),
                                //icon: new Icon(Icons.lock,size: 18.0,),
                              ),
                            ),
                          ),
                        ),
                      ),



                      SizedBox(height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.025,),

                      Container(
                        height: MediaQuery.of(context).size.height*0.075,
                        width: MediaQuery.of(context).size.width*0.80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: new AssetImage( "assets/images/_Common/UIElements/Band.png",),
                              fit: BoxFit.fill
                          ),
                          //color: Colors.red
                        ),


                        child: InkWell(
                          onTap: (){

                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10,0, 0, 0),
                            child: AutoSizeTextField(
                              controller: emailController,
                              fullwidth: true,
                              minFontSize: 16.0,
                              style: TextStyle(
                                  fontSize: 18.0,
                                  height: 1.5,
                                  color: Colors.white
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Email',
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[500],
                                ),
                                //icon: new Icon(Icons.lock,size: 18.0,),
                              ),
                            ),
                          ),
                        ),
                      ),





                      SizedBox(height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.025,),
                      Container(
                        height: MediaQuery.of(context).size.height*0.075,
                        width: MediaQuery.of(context).size.width*0.80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: new AssetImage( "assets/images/_Common/UIElements/Band.png",),
                              fit: BoxFit.fill
                          ),
                          //color: Colors.red
                        ),


                        child: InkWell(
                          onTap: (){

                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10,0, 0, 0),
                            child: AutoSizeTextField(
                              controller: firstnameController,
                              fullwidth: true,
                              minFontSize: 16.0,
                              style: TextStyle(
                                  fontSize: 18.0,
                                  height: 1.5,
                                  color: Colors.white
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'First Name',
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[500],
                                ),
                                //icon: new Icon(Icons.lock,size: 18.0,),
                              ),
                            ),
                          ),
                        ),
                      ),




                      SizedBox(height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.025,),

                      Container(
                        height: MediaQuery.of(context).size.height*0.075,
                        width: MediaQuery.of(context).size.width*0.80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: new AssetImage( "assets/images/_Common/UIElements/Band.png",),
                              fit: BoxFit.fill
                          ),
                          //color: Colors.red
                        ),


                        child: InkWell(
                          onTap: (){

                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10,0, 0, 0),
                            child: AutoSizeTextField(
                              controller: lastnameController,
                              fullwidth: true,
                              minFontSize: 16.0,
                              style: TextStyle(
                                  fontSize: 18.0,
                                  height: 1.5,
                                  color: Colors.white
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Last Name',
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[500],
                                ),
                                //icon: new Icon(Icons.lock,size: 18.0,),
                              ),
                            ),
                          ),
                        ),
                      ),


                      SizedBox(height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.040,),
                      Row(
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
                            child: Container(
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.065,
                              width: MediaQuery.of(context).size.width*0.37,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: new AssetImage( "assets/images/_Common/UIElements/Button.png",),
                                    fit: BoxFit.fill
                                ),
                                //color: Colors.red
                              ),


                              child: Center(
                                child: Text('Cancel',
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
                                MaterialPageRoute(builder: (context) => HomePage()),
                              );

                            },
                            child: Container(
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.065,
                              width: MediaQuery.of(context).size.width*0.30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: new AssetImage( "assets/images/_Common/UIElements/Button.png",),
                                    fit: BoxFit.fill
                                ),
                                //color: Colors.red
                              ),


                              child: Center(
                                child: Text('Save',
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









                        ],),





                      SizedBox(height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.070,),

                      InkWell(
                        onTap: (){

                        },
                        child: Container(
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * 0.080,
                          width: MediaQuery.of(context).size.width*0.80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: new AssetImage( "assets/images/_Common/UIElements/Button.png",),
                                fit: BoxFit.fill
                            ),
                            //color: Colors.red
                          ),

                          child: Center(
                            child: Text('Change Password',
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

                        },
                        child: Container(
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * 0.080,
                          width: MediaQuery.of(context).size.width*0.80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: new AssetImage( "assets/images/_Common/UIElements/Button.png",),
                                fit: BoxFit.fill
                            ),
                            //color: Colors.red
                          ),


                          child: Center(
                            child: Text('Upgrade',
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

                    ]
                )
            ),
          ),
        ));
  }

}