import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:flutter/services.dart';
import 'select_jews_calender.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class JewCalendar extends StatefulWidget {
  @override
  _NewUserPageState createState() => _NewUserPageState();
}

class _NewUserPageState extends State<JewCalendar> {
  TextEditingController calenderController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return

      Container(
        height: MediaQuery
            .of(context)
            .size
            .height * 0.23,
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
                              color:Colors.black87,),

                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10,13, 0, 0),

                             child:  AutoSizeTextField(
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



                              // child: AutoSizeTextField(
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
                              //
                              //
                              //
                              //
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

            SelectJewsCalendar(),



          ],
        ),

      );



  }}



  class DateFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
  TextEditingValue prevText, TextEditingValue currText) {
  int selectionIndex;

  // Get the previous and current input strings
  String pText = prevText.text;
  String cText = currText.text;
  // Abbreviate lengths
  int cLen = cText.length;
  int pLen = pText.length;

  if (cLen == 1) {
  // Can only be 0, 1, 2 or 3
  if (int.parse(cText) > 3) {
  // Remove char
  cText = '';
  }
  } else if (cLen == 2 && pLen == 1) {
  // Days cannot be greater than 31
  int dd = int.parse(cText.substring(0, 2));
  if (dd == 0 || dd > 31) {
  // Remove char
  cText = cText.substring(0, 1);
  } else {
  // Add a / char
  cText += '/';
  }
  } else if (cLen == 4) {
  // Can only be 0 or 1
  if (int.parse(cText.substring(3, 4)) > 1) {
  // Remove char
  cText = cText.substring(0, 3);
  }
  } else if (cLen == 5 && pLen == 4) {
  // Month cannot be greater than 12
  int mm = int.parse(cText.substring(3, 5));
  if (mm == 0 || mm > 12) {
  // Remove char
  cText = cText.substring(0, 4);
  } else {
  // Add a / char
  cText += '/';
  }
  } else if ((cLen == 3 && pLen == 4) || (cLen == 6 && pLen == 7)) {
  // Remove / char
  cText = cText.substring(0, cText.length - 1);
  } else if (cLen == 3 && pLen == 2) {
  if (int.parse(cText.substring(2, 3)) > 1) {
  // Replace char
  cText = cText.substring(0, 2) + '/';
  } else {
  // Insert / char
  cText =
  cText.substring(0, pLen) + '/' + cText.substring(pLen, pLen + 1);
  }
  } else if (cLen == 6 && pLen == 5) {
  // Can only be 1 or 2 - if so insert a / char
  int y1 = int.parse(cText.substring(5, 6));
  if (y1 < 1 || y1 > 2) {
  // Replace char
  cText = cText.substring(0, 5) + '/';
  } else {
  // Insert / char
  cText = cText.substring(0, 5) + '/' + cText.substring(5, 6);
  }
  } else if (cLen == 7) {
  // Can only be 1 or 2
  int y1 = int.parse(cText.substring(6, 7));
  if (y1 < 1 || y1 > 2) {
  // Remove char
  cText = cText.substring(0, 6);
  }
  } else if (cLen == 8) {
  // Can only be 19 or 20
  int y2 = int.parse(cText.substring(6, 8));
  if (y2 < 19 || y2 > 20) {
  // Remove char
  cText = cText.substring(0, 7);
  }
  }

  selectionIndex = cText.length;
  return TextEditingValue(
  text: cText,
  selection: TextSelection.collapsed(offset: selectionIndex),

  );
  }
  }


