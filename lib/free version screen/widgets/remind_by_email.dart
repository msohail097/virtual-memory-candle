import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class RemindMeByEmail extends StatefulWidget {
  @override
  _NewUserPageState createState() => _NewUserPageState();
}

class _NewUserPageState extends State<RemindMeByEmail> {
  bool _checkemail=false;
  bool _checkephone=false;


  @override
  void initState(){
    if(_checkemail==false&&_checkephone==false){
      setState(() {
        _checkemail=true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return
      Container(
        height: MediaQuery
            .of(context)
            .size
            .height * 0.10,
        width: MediaQuery.of(context).size.width*1,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage( "assets/images/CandleTypes/Invite_A.png"),
            fit: BoxFit.fill,
          ),
          //color: Colors.green,
        ),
        child:
        Row(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.fromLTRB(5,0,0,0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[


                    Align(
                      alignment:Alignment.centerRight,
                      child: Text('REMIND ME BY: ',
                          style: GoogleFonts.zillaSlab(
                            textStyle: TextStyle(
                                fontSize: 14*
                                    MediaQuery.textScaleFactorOf(
                                        context),
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),

                          )),
                    ),




//                     if(_checkemail==true && _checkephone==false)...[
//                       Container(
//                       height: MediaQuery
//                           .of(context)
//                           .size
//                           .height * 0.050,
//                       width: MediaQuery.of(context).size.width*0.14,
//                       child: Center(
//                         child: Text('Email',
//                             style: GoogleFonts.zillaSlab(
//                               textStyle: TextStyle(
//                                   fontSize: 14*
//                                       MediaQuery.textScaleFactorOf(
//                                           context),
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white
//                               ),
//
//                             )),
//                       ),
//                     ),
//                        ]
//
//
//                     else if(_checkemail==false && _checkephone==true)...[
//                       Container(
//                       height: MediaQuery
//                           .of(context)
//                           .size
//                           .height * 0.050,
//                       width: MediaQuery.of(context).size.width*0.14,
//                       child: Center(
//                         child: Text('Phone',
//                             style: GoogleFonts.zillaSlab(
//                               textStyle: TextStyle(
//                                   fontSize: 14*
//                                       MediaQuery.textScaleFactorOf(
//                                           context),
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white
//                               ),
//
//                             )),
//                       ),
//                     ),
//                     ]
//
//
//                     else if(_checkephone==true && _checkemail==true)...[
//                       Container(
//                       height: MediaQuery
//                           .of(context)
//                           .size
//                           .height * 0.050,
//                       width: MediaQuery.of(context).size.width*0.29,
//                       child: Center(
//                         child: Text('Email and Phone',
//                             style: GoogleFonts.zillaSlab(
//                               textStyle: TextStyle(
//                                   fontSize: 14*
//                                       MediaQuery.textScaleFactorOf(
//                                           context),
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white
//                               ),
//
//                             )),
//                       ),
//                     ),
// ]
//
//
//
//
//                       else if(_checkephone==false && _checkemail==false)...[
//                           Container(
//                             height: MediaQuery
//                                 .of(context)
//                                 .size
//                                 .height * 0.050,
//                             width: MediaQuery.of(context).size.width*0.14,
//                             child: Center(
//                               child: Text('Email',
//                                   style: GoogleFonts.zillaSlab(
//                                     textStyle: TextStyle(
//                                         fontSize: 14*
//                                             MediaQuery.textScaleFactorOf(
//                                                 context),
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.white
//                                     ),
//
//                                   )),
//                             ),
//                           ),


                    //    ]





                  ]),
            ),








            InkWell(
                onTap: () async{

                  setState(() {
                    _checkemail=!_checkemail;
                  });
                },
                child:
                _checkemail || (_checkemail==false && _checkephone==false)?
                Center(
                  child: Image(image: new AssetImage( "assets/images/_Common/UIElements/Cir_button_green.png",
                  ),height: 25,width: 25,),
                )

                    :

                Center(
                  child: Image(image: new AssetImage( "assets/images/_Common/UIElements/Cir_button_grey.png",
                  ),height: 25,width: 25,),
                )
            ),



            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.050,
              width: MediaQuery.of(context).size.width*0.14,
              child: Center(
                child: Text('Email',
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
            ),





            InkWell(
                onTap: () async{
                  setState(() {
                    _checkephone=!_checkephone;
                  });
                },
                child:
                _checkephone?
                Center(
                  child: Image(image: new AssetImage( "assets/images/_Common/UIElements/Cir_button_green.png",
                  ),height: 25,width: 25,),
                )

                    :

                Center(
                  child: Image(image: new AssetImage( "assets/images/_Common/UIElements/Cir_button_grey.png",
                  ),height: 25,width: 25,),
                )
            ),



            Center(
              child: Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.050,
                width: MediaQuery.of(context).size.width*0.14,
                child: Center(
                  child: Text('Phone',
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
              ),
            ),

          ],
        ),
      );



  }}

