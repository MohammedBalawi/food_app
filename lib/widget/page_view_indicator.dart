import 'package:flutter/material.dart';

class PageViewIndicator extends StatelessWidget {

  final double marginEnd;
  final bool selected;


  PageViewIndicator({this.marginEnd = 0,required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: selected ? Color(0xFF89dad0) : Colors.grey.shade500,
      ),
    );
  }
}
