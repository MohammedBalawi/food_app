import 'package:flutter/material.dart';
import 'package:food_app/widget/icon_screen.dart';
import 'package:food_app/widget/read_more.dart';
import 'package:google_fonts/google_fonts.dart';
class ViewFood extends StatelessWidget {
  const ViewFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){
            Navigator.pushReplacementNamed(context, '/appBar_screen');
          }, icon: Icon(Icons.clear,color: Colors.white,)),
          IconButton(onPressed: (){},icon:Icon(Icons.shopping_cart_outlined,color: Colors.white),),


        ],
      ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),

                ),
                // margin: EdgeInsets.only(left: 5,right: 5),
                alignment: AlignmentDirectional.center,
                child: Text('Name Food',style:GoogleFonts.aBeeZee (
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: Colors.black,
                )),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 10,bottom: 10),
              ),
            ),
            expandedHeight: 300,
            pinned: true,
            backgroundColor: Colors.blueGrey.shade200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/images/images2.jpeg',
                fit: BoxFit.cover,
                width: double.maxFinite,
              ),


            ),

          ),
          SliverToBoxAdapter(

            child: Padding(padding: EdgeInsets.only(left: 10,right: 5),
            child:ReadMore(text:'City Taste Festivals are truly unique events where premium and knowledgeable foodies come to sample stunning signature dishes from the latest, greatest and most exciting local restaurantsAttended by 10 - 40 of the city\'s most high-quality restaurantsEach restaurant receives a space to design and styleThree small-plate signature dishes offered per restaurantA mix of celebrity and world-class chefs50-200 gourmet food and drink purveyors, artisan producers, manufacturers of exclusive lifestyle products linked to drinking and eating will be at the eventsCity Taste Festivals are truly unique events where premium and knowledgeable foodies come to sample stunning signature dishes from the latest, greatest and most exciting local restaurantsAttended by 10 - 40 of the city\'s most high-quality restaurantsEach restaurant receives a space to design and styleThree small-plate signature dishes offered per restaurantA mix of celebrity and world-class chefs50-200 gourmet food and drink purveyors, artisan producers, manufacturers of exclusive lifestyle products linked to drinking and eating will be at the eventsCity Taste Festivals are truly unique events where premiumCity Taste Festivals are truly unique events where premium and knowledgeable foodies come to sample stunning signature dishes from the latest, greatest and most exciting local restaurantsAttended by 10 - 40 of the city\'s most high-quality restaurantsEach restaurant receives a space to design and styleThree small-plate signature dishes offered per restaurantA mix of celebrity and world-class chefs50-200 gourmet food and drink purveyors, artisan producers, manufacturers of exclusive lifestyle products linked to drinking and eating will be at the eventsCity Taste Festivals are truly unique events where premium and knowledgeable foodies come to sample stunning signature dishes from the latest, greatest and most exciting local restaurantsAttended by 10 - 40 of the city\'s most high-quality restaurantsEach restaurant receives a space to design and styleThree small-plate signature dishes offered per restaurantA mix of celebrity and world-class chefs50-200 gourmet food and drink purveyors, artisan producers, manufacturers of exclusive lifestyle products linked to drinking and eating will be at the eventsCity Taste Festivals are truly unique events where premiumCity Taste Festivals are truly unique events where premium and knowledgeable foodies come to sample stunning signature dishes from the latest, greatest and most exciting local restaurantsAttended by 10 - 40 of the city\'s most high-quality restaurantsEach restaurant receives a space to design and styleThree small-plate signature dishes offered per restaurantA mix of celebrity and world-class chefs50-200 gourmet food and drink purveyors, artisan producers, manufacturers of exclusive lifestyle products linked to drinking and eating will be at the eventsCity Taste Festivals are truly unique events where premium and knowledgeable foodies come to sample stunning signature dishes from the latest, greatest and most exciting local restaurantsAttended by 10 - 40 of the city\'s most high-quality restaurantsEach restaurant receives a space to design and styleThree small-plate signature dishes offered per restaurantA mix of celebrity and world-class chefs50-200 gourmet food and drink purveyors, artisan producers, manufacturers of exclusive lifestyle products linked to drinking and eating will be at the eventsCity Taste Festivals are truly unique events where premiumCity Taste Festivals are truly unique events where premium and knowledgeable foodies come to sample stunning signature dishes from the latest, greatest and most exciting local restaurantsAttended by 10 - 40 of the city\'s most high-quality restaurantsEach restaurant receives a space to design and styleThree small-plate signature dishes offered per restaurantA mix of celebrity and world-class chefs50-200 gourmet food and drink purveyors, artisan producers, manufacturers of exclusive lifestyle products linked to drinking and eating will be at the eventsCity Taste Festivals are truly unique events where premium and knowledgeable foodies come to sample stunning signature dishes from the latest, greatest and most exciting local restaurantsAttended by 10 - 40 of the city\'s most high-quality restaurantsEach restaurant receives a space to design and styleThree small-plate signature dishes offered per restaurantA mix of celebrity and world-class chefs50-200 gourmet food and drink purveyors, artisan producers, manufacturers of exclusive lifestyle products linked to drinking and eating will be at the eventsCity Taste Festivals are truly unique events where premiumCity Taste Festivals are truly unique events where premium and knowledgeable foodies come to sample stunning signature dishes from the latest, greatest and most exciting local restaurantsAttended by 10 - 40 of the city\'s most high-quality restaurantsEach restaurant receives a space to design and styleThree small-plate signature dishes offered per restaurantA mix of celebrity and world-class chefs50-200 gourmet food and drink purveyors, artisan producers, manufacturers of exclusive lifestyle products linked to drinking and eating will be at the eventsCity Taste Festivals are truly unique events where premium and knowledgeable foodies come to sample stunning signature dishes from the latest, greatest and most exciting local restaurantsAttended by 10 - 40 of the city\'s most high-quality restaurantsEach restaurant receives a space to design and styleThree small-plate signature dishes offered per restaurantA mix of celebrity and world-class chefs50-200 gourmet food and drink purveyors, artisan producers, manufacturers of exclusive lifestyle products linked to drinking and eating will be at the eventsCity Taste Festivals are truly unique events where premium and knowledgeable foodies come to sample stunning signature dishes from the latest, greatest and most exciting local restaurantsAttended by 10 - 40 of the city\'s most high-quality restaurantsEach restaurant receives a space to design and styleThree small-plate signature dishes offered per restaurantA mix of celebrity and world-class chefs50-200 gourmet food and drink purveyors, artisan producers, manufacturers of exclusive lifestyle products linked to drinking and eating will be at the eventsCity Taste Festivals are truly unique events where premium and knowledgeable foodies come to sample stunning signature dishes from the latest, greatest and most exciting local restaurantsAttended by 10 - 40 of the city\'s most high-quality restaurantsEach restaurant receives a space to design and styleThree small-plate signature dishes offered per restaurantA mix of celebrity and world-class chefs50-200 gourmet food and drink purveyors, artisan producers, manufacturers of exclusive lifestyle products linked to drinking and eating will be at the events',

    ),
            ),

          )

        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min ,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
              bottom: 20,
            ),
            child:

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.remove,size: 25,color:  Color(0xFF89dad0),)),
            Text('\$12.88'+'X'+'0',style: GoogleFonts.aBeeZee(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),

            IconButton(onPressed: (){}, icon: Icon(Icons.add,size: 25,color:  Color(0xFF89dad0),)),
          ],),),
          Container(
            padding: EdgeInsets.only(bottom: 20,left: 30,right: 20),
            child:
          Row(children: [
            Container(
              // color: Colors.red,
              height:70,
              width: 70 ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Icon(Icons.favorite,color: Color(0xFF89dad0),),
              // Image.asset('assets/images/image3.jpeg',fit: BoxFit.cover,),
            ),
            SizedBox(width: 100,),
            Container(

              height: 70,
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
          ), ],
      ),
    );
  }
}

