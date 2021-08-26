import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:candle/ui/new_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Unlock extends StatefulWidget {
  @override
  _NewUserPageState createState() => _NewUserPageState();
}

class _NewUserPageState extends State<Unlock> {
  bool isSwitched = false;


  @override
  Widget build(BuildContext context) {

    return       Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        InkWell(
          onTap: (){
            _showDialog();

          },
          child: Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.15,
            width: MediaQuery.of(context).size.width*0.49,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage( "assets/images/CandleTypes/Invite_A.png"),
                fit: BoxFit.fill,
              ),
              //color: Colors.green,
            ),

            child: Stack(children:[

              Padding(
                padding: const EdgeInsets.fromLTRB(60,0,0,0),
                child: Center(
                  child: Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.10,
                    width: MediaQuery.of(context).size.width*0.14,

                    child: Center(
                      child: Text('Select Music',
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
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,50,0),
                child: Center(
                  child: Image(image: new AssetImage( "assets/images/_Common/Icons/Music_symbol.png",
                  ),height: 50,width: 50,),
                ),
              ),

              Padding(
    padding: const EdgeInsets.fromLTRB(50,0,0,0),
    child: Center(
                  child: Image(image: new AssetImage( "assets/images/_Common/UIElements/Lock.png",
                  ),height: 70,width: 70,),
                ),
              ),

            ]),
          ),
        ),



        InkWell(
          onTap: (){
            _showDialog();
          },
          child: Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.15,
            width: MediaQuery.of(context).size.width*0.49,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage( "assets/images/CandleTypes/Invite_A.png"),
                fit: BoxFit.fill,
              ),
              //color: Colors.green,
            ),

            child: Stack(children:[

              Padding(
                padding: const EdgeInsets.fromLTRB(20,0,0,0),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,0),
                    child: Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.10,
                      width: MediaQuery.of(context).size.width*0.14,
                      child: Text("Invite Others",
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
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(10,0,0,0),
                child: Center(
                  child: Image(image: new AssetImage( "assets/images/_Common/UIElements/Lock.png",
                  ),height: 70,width: 70,),
                ),
              ),


              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,80,0),

                child: Center(
                  child: Switch(
                    value: isSwitched,
                    onChanged: (value){
                      setState(() {
                        isSwitched=value;
                        print(isSwitched);
                      });
                    },
                    inactiveTrackColor:Colors.deepOrange,
                    activeTrackColor: Colors.lightGreenAccent,
                    activeColor: Colors.green,
                  ),
                ),
              ),
            ]),
          ),
        ),

      ],
    );

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

