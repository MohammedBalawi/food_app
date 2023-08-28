import 'package:flutter/material.dart';
import 'package:food_app/widget/view_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/page_view_indicator.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({super.key});

  @override
  State<AppBarScreen> createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 45,left: 20,right: 20),
        child: Column(
          children: [
            Container(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('Country',style:GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Color(0xFF89dad0),
                        )),
                        Row(children: [
                          Text('City',style:GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.black38),),
                          IconButton(onPressed: (){}, icon:Icon( Icons.arrow_drop_down_rounded)),
                        ],),

                      ],
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      child:
                      IconButton(onPressed: (){}, icon:Icon(Icons.search, color: Colors.white,)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        // color: Colors.cyanAccent.shade100,
                        color: Color(0xFF89dad0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: SingleChildScrollView(
            child: ViewScreen(),
            )
            ),


          ],
        ),
      ),
    );
  }
}
