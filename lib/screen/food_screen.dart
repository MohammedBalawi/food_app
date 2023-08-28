import 'package:flutter/material.dart';
import 'package:food_app/widget/read_more.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/icon_screen.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  late  int _curr = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/image1.jpeg'),

                  ),
                ),

              ),
          ),
            Positioned(
            left: 20,
            right: 20,

            child:Padding(
              padding: EdgeInsets.only(top: 20),
        child:  Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){
                Navigator.pushReplacementNamed(context, '/appBar_screen');
              }, icon: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white)),
              IconButton(onPressed: (){},icon:Icon(Icons.shopping_cart_outlined,color: Colors.white),)

            ],
          ),
            ),
          ),
          Positioned(
            left: 0,
              right: 0,
              top: 330,
              child: Container(
                // color: Colors.red,
                padding: EdgeInsets.only( left: 20,right: 20,top: 20,bottom: 700),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('name food',style:GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      color: Colors.black,
                    )),
                    SizedBox(height: 10,),
                    Row(children: [

                      Wrap(
                          children: List.generate(5, (index) => Icon(Icons.star,color: Color(0xFF89dad0),))
                      ),
                      SizedBox(width: 10,),
                      Text('4.5',style:GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.black38),),
                      SizedBox(width: 10,),
                      Text('1256',style:GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.black38),),
                      SizedBox(width: 10,),
                      Text('name',style:GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.black38),),

                    ],),
                    SizedBox(height: 20,),
                    const Row(children: [
                      IconScreen(
                          iconData: Icons.circle_sharp,
                          text: 'Normal',
                          color:Colors.black38,
                          iconColor: Colors.orangeAccent),
                      SizedBox(width: 70,),
                      IconScreen(
                        iconData: Icons.location_on,
                        text: '1.7km',
                        color:Colors.black38,
                        iconColor: Color(0xFF89dad0),),
                      SizedBox(width: 70,),
                      IconScreen(
                        iconData: Icons.access_time_outlined,
                        text: '32min',
                        color:Colors.black38,
                        iconColor: Colors.orangeAccent,),

                    ],),
                    SizedBox(height: 20,),
                    Text('name food',style:GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      color: Colors.black,
                    )),
                    SizedBox(height: 20,),
                    Container(child:
                    Column(children: [
                      SingleChildScrollView(
                        child:ReadMore(text: 'Im in npm-app project folder and running the command gradle npm_run_build . gradle npm_run_build. Task :npm-app:nodeSetup FAILED. FAILURE: try switching your node plugin: plugins { id "com.github.node-gradle.node" version "1.5.3"Im in npm-app project folder and running the command gradle npm_run_build . gradle npm_run_build. Task :npm-app:nodeSetup FAILED. FAILURE: try switching your node plugin: plugins { id "com.github.node-gradle.node" version "1.5.3"Im in npm-app project folder and running the command gradle npm_run_build . gradle npm_run_build. Task :npm-app:nodeSetup FAILED. FAILURE: try switching your node plugin: plugins { id "com.github.node-gradle.node" version "1.5.3"Im in npm-app project folder and running the command gradle npm_run_build . gradle npm_run_build. Task :npm-app:nodeSetup FAILED. FAILURE: try switching your node plugin: plugins { id "com.github.node-gradle.node" version "1.5.3"Im in npm-app project folder and running the command gradle npm_run_build . gradle npm_run_build. Task :npm-app:nodeSetup FAILED. FAILURE: try switching your node plugin: plugins { id "com.github.node-gradle.node" version "1.5.3"Im in npm-app project folder and running the command gradle npm_run_build . gradle npm_run_build. Task :npm-app:nodeSetup FAILED. FAILURE: try switching your node plugin: plugins { id "com.github.node-gradle.node" version "1.5.3" ',
                      )  ,)

                      ,
                    ],),)



                  ],
                ),
              ),

          ),


        ],
      ),
      bottomNavigationBar:
      Container(
        height: 140,
        padding: EdgeInsets.only(top: 30 ,bottom: 30,left: 20,right: 20),
        decoration: const BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight:Radius.circular(20),
          )
        ),
        child: Row(children: [
          Container(
            height: 120,
            width: 130 ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child:
            Row(
              children: [
                IconButton(onPressed: (){
                  setState(() {
                    _curr -=1 ;
                  });
                }, icon:Icon(Icons.remove,size: 30,), ),

                SizedBox(width: 10,),
                Text(_curr.toString(),style: GoogleFonts.aBeeZee(
                  fontSize: 19
                ),),
                SizedBox(width: 10,),
                IconButton(onPressed: (){
                  setState(() {
                    _curr +=1;
                  });
                }, icon:Icon(Icons.add,size: 30,) ),

              ],
            ),
          ),
          SizedBox(width: 40,),
          Container(

            height: 150,
              width: 190,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF89dad0),
            ),
            child:
            Center(
                child: TextButton(onPressed:(){},child: Text('\$0.08 Add to cart',style:GoogleFonts.aBeeZee(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.white,
                )),)

                    ),
          ),


        ],),
      ),


    );
  }
}
/*
* Expanded(
        child: Card(
          margin:  EdgeInsets.symmetric(vertical: 0),
          elevation: 20,
          color: Colors.white,
          // clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(40),
            ),
          ),

        ),*/