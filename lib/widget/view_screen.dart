import 'package:flutter/material.dart';
import 'package:food_app/controller/popular_proguct_controller.dart';
import 'package:food_app/widget/icon_screen.dart';
import 'package:food_app/widget/page_view_indicator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewScreen extends StatefulWidget {
  const ViewScreen({super.key});

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
    _pageController.addListener(() {
      setState(() {
        _currValue = _pageController.page!;
      });
    });
  }

  int _curr = 0;
  late PageController _pageController = PageController(viewportFraction: 0.85);
  var _currValue = 0.0;
  double _scaleCurr = 0.8;

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Column(children: [
      GetBuilder<PopularProductController>(builder: (popularProduct){
        return Container(
          // color: Colors.red,
          height: 400,
          child: PageView.builder(
              onPageChanged: (int value) {
                setState(() {
                  print(value);
                  _curr = value;
                });
              },
              itemCount: 6,
              itemBuilder: (context, index) {
                return _buildPageItem(index);
              }),
        );
      }),
      GetBuilder<PopularProductController>(builder: (popularProduct){
        return Container(
          margin: EdgeInsets.only(bottom: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PageViewIndicator(
                marginEnd: 10,
                selected: _curr == 0,
              ),
              PageViewIndicator(
                marginEnd: 10,
                selected: _curr == 1,
              ),
              PageViewIndicator(
                marginEnd: 10,
                selected: _curr == 2,
              ), // PageViewIndicator PageViewIndicator (),
              PageViewIndicator(
                marginEnd: 10,
                selected: _curr == 3,
              ), // PageViewIndicator PageViewIndicator (),
              PageViewIndicator(
                marginEnd: 10,
                selected: _curr == 4,
              ), // PageViewIndicator PageViewIndicator (),
              PageViewIndicator(
                marginEnd: 10,
                selected: _curr == 5,
              ), // PageViewIndicator PageViewIndicator (),
            ],
          ),
        );
      }),
      SizedBox(height: 10,),
      GetBuilder<PopularProductController>(builder: (popularProduct){
        return  Container(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Row(children: [
                  Text(popularProduct.popularProductList.length.toString(), style: GoogleFonts.aBeeZee(
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    color: Colors.black,
                  )),
                  SizedBox(width: 15,),
                  Text('.', style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black38),), SizedBox(width: 15,),
                  Text('food page', style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black38),),

                ],
                ),
              ],
            ),
          ),
        );

      }),

      InkWell(onTap: (){
        Navigator.pushReplacementNamed(context, '/view_food');
      },
        child:ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child:
            Expanded(child: Row(children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(top: 10),

                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white38,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/images2.jpeg'),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey,
                          blurRadius: 5,
                          offset: Offset(0, 5),
                        ),

                      ]
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Title', style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      color: Colors.black,
                    )),
                    SizedBox(width: 15,),
                    Text('Sub Title', style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Colors.black38),),

                    Row(children: [
                      IconScreen(
                          iconData: Icons.circle_sharp,
                          text: 'Normal',
                          color: Colors.black38,
                          iconColor: Colors.orangeAccent),
                      SizedBox(width: 5,),
                      IconScreen(
                        iconData: Icons.location_on,
                        text: '1.7km',
                        color: Colors.black38,
                        iconColor: Color(0xFF89dad0),),
                      SizedBox(width: 5,),
                      IconScreen(
                        iconData: Icons.access_time_outlined,
                        text: '32min',
                        color: Colors.black38,
                        iconColor: Colors.orangeAccent,),

                    ],),

                  ],
                ),
              ],),),
            );
          }) ,)



    ],);
  }

  Widget _buildPageItem(int index) {
    // Matrix4 matrix4 = Matrix4.identity();
    // if(index==_currValue.floor()){
    //   var currScale = 1-(_currValue-index)*(1-_scaleCurr);
    //   matrix4=Matrix4.diagonal3Values(1, currScale, 1);
    // }else if(index==_currValue.floor()+1){
    //   var currScale = _scaleCurr+(_currValue-index+1 )*(1-_scaleCurr);
    //   matrix4=Matrix4.diagonal3Values(1, currScale, 1);
    // }
    return

      /*Transform(transform: matrix4,
    child: */
      Stack(
        children: [
          Container(
            height: 230,
            margin: EdgeInsets.only(left: 5, right: 5, top: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index.isEven ? Colors.blue : Colors.pinkAccent,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/image1.jpeg'),
                )
            ),
          ),
          Align(
              child: InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/food_screen');
                  },
                  child: Container(
                    alignment: AlignmentDirectional.bottomCenter,
                    height: 150,
                    margin: EdgeInsets.only(
                        top: 40, left: 30, right: 30, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFe8e8e8),
                          blurRadius: 5,
                          offset: Offset(0, 5),
                        ),

                      ],
                    ),

                    child: Container(
                      padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                      child: Column(
                        children: [
                          Text('name food', style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.w400,
                            fontSize: 25,
                            color: Colors.black,
                          )),
                          SizedBox(height: 10,),
                          Row(children: [
                            SizedBox(width: 10,),
                            Wrap(
                                children: List.generate(5, (index) =>
                                    Icon(Icons.star, color: Color(0xFF89dad0),))
                            ),
                            SizedBox(width: 10,),
                            Text('4.5', style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.black38),),
                            SizedBox(width: 10,),
                            Text('1256', style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.black38),),
                            SizedBox(width: 10,),
                            Text('name', style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.black38),),

                          ],),
                          SizedBox(height: 20,),
                          const Row(children: [
                            IconScreen(
                                iconData: Icons.circle_sharp,
                                text: 'Normal',
                                color: Colors.black38,
                                iconColor: Colors.orangeAccent),
                            SizedBox(width: 20,),
                            IconScreen(
                              iconData: Icons.location_on,
                              text: '1.7km',
                              color: Colors.black38,
                              iconColor: Color(0xFF89dad0),),
                            SizedBox(width: 20,),
                            IconScreen(
                              iconData: Icons.access_time_outlined,
                              text: '32min',
                              color: Colors.black38,
                              iconColor: Colors.orangeAccent,),

                          ],),


                        ],
                      ),
                    ),
                  ),
              )


          ),
        ],
        // ),
      );
  }
}
