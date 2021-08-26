import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SelectJewsCalendar extends StatefulWidget {
  @override
  _NewUserPageState createState() => _NewUserPageState();
}

class _NewUserPageState extends State<SelectJewsCalendar> {
  bool _checkcalendar=false;

  @override
  Widget build(BuildContext context) {

    return
      Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.09,
              width: MediaQuery.of(context).size.width*0.40,

              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    InkWell(
                        onTap: () async{

                          setState(() {
                            _checkcalendar=!_checkcalendar;
                          });
                        }
                        ,
                        child:
                        _checkcalendar?



                        Center(
                          child: Image(image: new AssetImage( "assets/images/_Common/UIElements/Cir_button_green.png",
                          ),height: 30,width: 30,),
                        )

                            :

                        Center(
                          child: Image(image: new AssetImage( "assets/images/_Common/UIElements/Cir_button_grey.png",
                          ),height: 30,width: 30,),
                        )
                    ),



                    Center(
                      child: Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.10,
                        width: MediaQuery.of(context).size.width*0.25,

                        child: Center(
                          child: Text('Traditional Calendar',
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
                      ),
                    ),


                  ]),
            ),




            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.10,
              width: MediaQuery.of(context).size.width*0.40,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[



                    InkWell(
                      onTap: () async{
                        setState(() {
                          _checkcalendar=!_checkcalendar;
                        });
                      },
                      child:
                      _checkcalendar?

                      Center(
                       child: Image(image: new AssetImage( "assets/images/_Common/UIElements/Cir_button_grey.png",
                          ),height: 30,width: 30,),
                           )

                        :
                      Center(
                        child: Image(image: new AssetImage( "assets/images/_Common/UIElements/Cir_button_green.png",
                        ),height: 30,width: 30,),
                      )


                    ),



                    Center(
                      child: Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.10,
                        width: MediaQuery.of(context).size.width*0.25,

                        child: Center(
                          child: Text('Hebrew Calendar',
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
                      ),
                    ),


                  ]),
            ),



          ],
        ),
      );



  }}

