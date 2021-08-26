import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:flutter/services.dart';
import 'jew_clendar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class NormalCalendar extends StatefulWidget {
  @override
  _NewUserPageState createState() => _NewUserPageState();
}

class _NewUserPageState extends State<NormalCalendar> {
  TextEditingController calenderController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return

      Container(
        height: MediaQuery
            .of(context)
            .size
            .height * 0.15,
        width: MediaQuery.of(context).size.width*1,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage( "assets/images/CandleTypes/Invite_A.png"),
            fit: BoxFit.fill,
          ),
          //color: Colors.green,
        ),

        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.fromLTRB(0,12,0,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  Image(image: new AssetImage( "assets/images/_Common/Icons/calander.png",
                  ),height: 60,width: 60,),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,0,0,0),
                        child: Text('Date of Deceased',
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

                      Padding(
                        padding: const EdgeInsets.fromLTRB(3,5,0,0),
                        child: InkWell(
                          onTap: (){

                          },
                          child: Container(
                            height: MediaQuery
                                .of(context)
                                .size
                                .height * 0.05,
                            width: MediaQuery.of(context).size.width*0.36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black87,),

                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10,13, 0, 0),
                              child:

                              AutoSizeTextField(
                                // maxLength: 10,
                                keyboardType: TextInputType.datetime,
                                controller: calenderController,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    height: 1.5,
                                    color: Colors.white
                                ),
                                cursorColor: Colors.white,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'DD/MM/YYYY',
                                  hintStyle: GoogleFonts.poppins(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[500],
                                  ),

                                ),

                                inputFormatters: [
                                  // ignore: deprecated_member_use
                                  WhitelistingTextInputFormatter(RegExp("[0-9/]")),
                                  LengthLimitingTextInputFormatter(10),
                                  DateFormatter(),
                                ],
                              ),


                              // AutoSizeTextField(
                              //   controller: calenderController,
                              //   style: TextStyle(
                              //       fontSize: 18.0,
                              //       height: 1.5,
                              //       color: Colors.white
                              //   ),
                              //   decoration: InputDecoration(
                              //     border: InputBorder.none,
                              //     hintText: 'MM/DD/YYYY',
                              //     hintStyle: GoogleFonts.poppins(
                              //       fontSize: 12.0,
                              //       fontWeight: FontWeight.bold,
                              //       color: Colors.grey[500],
                              //     ),
                              //
                              //   ),
                              // ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),


                ],
              ),
            ),





          ],
        ),

      );



  }}

