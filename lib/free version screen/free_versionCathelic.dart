

import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:candle/free%20version%20screen/widgets/bottom_navbar.dart';
import 'package:candle/free%20version%20screen/widgets/normal_calendars.dart';
import 'package:candle/ui/new_user.dart';
import 'package:candle/ui/home_screen.dart';
import 'widgets/personal_message.dart';
import 'widgets/remind_by_email.dart';
import 'widgets/unlock.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';







class FreeVersionCatholic extends StatefulWidget {
  @override
  _freeVersionPageState createState() => _freeVersionPageState();
}

class _freeVersionPageState extends State<FreeVersionCatholic> {
  TextEditingController enternameController = TextEditingController();
  TextEditingController calenderController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  bool isSwitched = false;
  bool _check=false;
  @override
  void initState() {

  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
          body:

          SingleChildScrollView ( child:
          Container(
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

            child:Column(
              children: [

                Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.14,
                  width: MediaQuery.of(context).size.width*1,
                  //color: Colors.red,


                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [


                      InkWell(
                       onTap: (){
                         _showDialog();
                        },
                        child: Container(
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * 0.140,
                          width: MediaQuery.of(context).size.width*0.25,
                          decoration: new BoxDecoration(
                            image: new DecorationImage(
                              image: new AssetImage( "assets/images/CandleTypes/Invite_A.png"),
                              fit: BoxFit.fill,
                            ),
                            //color: Colors.green,
                          ),

                          child: Stack(children:[

                            Center(
                              child: Text('Select Photo',
                                  style: GoogleFonts.zillaSlab(
                                    textStyle: TextStyle(
                                        fontSize: 13*
                                            MediaQuery.textScaleFactorOf(
                                                context),
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),

                                  )),
                            ),


                            Center(
                              child: Image(image: new AssetImage( "assets/images/_Common/UIElements/Lock.png",
                              ),height: 65,width: 65,),
                            ),

                          ]),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,25,0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Text('CATHOLIC CANDLE',
                                  style: GoogleFonts.zillaSlab(
                                    textStyle: TextStyle(
                                        fontSize: 16*
                                            MediaQuery.textScaleFactorOf(
                                                context),
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),

                                  )),
                            ),
                            Center(
                              child: Text('CREATE NEW CANDLE',
                                  style: GoogleFonts.zillaSlab(
                                    textStyle: TextStyle(
                                        fontSize: 16*
                                            MediaQuery.textScaleFactorOf(
                                                context),
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),

                                  )),
                            ),



                            InkWell(
                              onTap: (){

                              },
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 07,0,0),
                                child: Container(
                                  height: MediaQuery.of(context).size.height*0.055,
                                  width: MediaQuery.of(context).size.width*0.650,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: new AssetImage( "assets/images/CandleTypes/Invite_A.png",),
                                        fit: BoxFit.fill
                                    ),
                                    //color: Colors.red
                                  ),


                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 15, 0,0),
                                    child: AutoSizeTextField(
                                      controller: enternameController,
                                      textCapitalization: TextCapitalization.words,
                                      fullwidth: true,
                                      minFontSize: 16.0,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          height: 1.5,
                                          color: Colors.white
                                      ),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Enter Name of Deceased',
                                        hintStyle: GoogleFonts.poppins(
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                        //icon: new Icon(Icons.lock,size: 18.0,),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),




                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.0020,),

                Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.78,
                  width: MediaQuery.of(context).size.width*1,

                  child:

                  Column(
                    children: [
                      // Container(
                      //   height: MediaQuery
                      //       .of(context)
                      //       .size
                      //       .height * 0.16,
                      //   width: MediaQuery.of(context).size.width*1,
                      //   decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //         image: new AssetImage( "assets/images/CandleTypes/Invite_A.png",),
                      //         fit: BoxFit.fill
                      //     ),
                      //     //color: Colors.red
                      //   ),
                      //   child:  Padding(
                      //     padding: const EdgeInsets.all(8.0),
                      //     child: Center(
                      //       child: Text('If the anniversary date falls on Shabbat, the candle should be lit before sunset.All other times should be lit after sunset',
                      //           style: GoogleFonts.zillaSlab(
                      //             textStyle: TextStyle(
                      //                 fontSize: 16*
                      //                     MediaQuery.textScaleFactorOf(
                      //                         context),
                      //                 fontWeight: FontWeight.bold,
                      //                 color: Colors.white
                      //             ),
                      //
                      //           )),
                      //     ),
                      //   ),
                      //
                      // ),




                      Unlock(),





                      NormalCalendar(),
                      RemindMeByEmail(),





                      PersonalMessage(),




                    ],
                  ),
                ),


                 Bottom_Navbar(),

                // Padding(
                //   padding: const EdgeInsets.fromLTRB(100,0,0,0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: [
                //
                //       InkWell(
                //         onTap: (){
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(builder: (context) => Home_Page()),
                //           );
                //         },
                //         child: Image(image: new AssetImage( "assets/images/_Common/Icons/home.png",
                //         ),height: 45,width: 45,),
                //       ),
                //
                //       InkWell(
                //         onTap: (){
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(builder: (context) => welcomeUserJewish()),
                //           );
                //         },
                //         child: Image(image: new AssetImage( "assets/images/_Common/Icons/Fornt_button.png",
                //         ),height: 45,width: 45,),
                //       ),
                //
                //     ],
                //   ),
                // ),


              ],) ,

          ),
          ),
        ));


  }




  void _showDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          backgroundColor: Colors.black87,
          elevation: 0,
          child: IntrinsicWidth(
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10,10,0,0),
                child: Text('Please upgrade to use this feature. ',
                              style: GoogleFonts.zillaSlab(
                                textStyle: TextStyle(
                                    fontSize: 20*
                                        MediaQuery.textScaleFactorOf(
                                            context),
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),

                              )),
              ),



                  SizedBox(height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.090,),



                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        InkWell(
                          onTap: (){

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => NewUserPage()),
                            );
                          },
                          child: Container(
                            height: MediaQuery
                                .of(context)
                                .size
                                .height * 0.060,
                            width: MediaQuery.of(context).size.width*0.35,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: new AssetImage( "assets/images/_Common/UIElements/Button.png",),
                                  fit: BoxFit.fill
                              ),
                              //color: Colors.red
                            ),


                            child: Center(
                              child: Text('UPGRADE',
                                  style: GoogleFonts.zillaSlab(
                                    textStyle: TextStyle(
                                        fontSize: 18 *
                                            MediaQuery.textScaleFactorOf(
                                                context),
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),

                                  )),
                            ),
                          ),
                        ),

                        SizedBox(height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.030,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,0,10),
                          child: InkWell(
                            onTap: (){
                              Navigator.pop(context);


                            },
                            child: Container(
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.060,
                              width: MediaQuery.of(context).size.width*0.35,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: new AssetImage( "assets/images/_Common/UIElements/Button.png",),
                                    fit: BoxFit.fill
                                ),
                                //color: Colors.red
                              ),


                              child: Center(
                                child: Text('CANCEL',
                                    style: GoogleFonts.zillaSlab(
                                      textStyle: TextStyle(
                                          fontSize: 18 *
                                              MediaQuery.textScaleFactorOf(
                                                  context),
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      ),

                                    )),
                              ),
                            ),
                          ),
                        ),









                      ],),
                  )



                                    ],
              ),
            ),
          ),
        );
      },);
  }
}