import 'package:aplikasi_carikos/theme.dart';
import 'package:flutter/material.dart';

class BottomNavbaritem extends StatelessWidget{

  final String imageUrl;
  final bool isActive;

  BottomNavbaritem({this.imageUrl,this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Spacer(),
      Image.asset(imageUrl,
      width: 26,
      ),
      SizedBox(height: 5,),
      Spacer(),
      isActive ? Container(
        width: 30,
        height: 2,
        decoration:BoxDecoration(
          color: purpleColor,
          borderRadius: BorderRadius.vertical(
            top:Radius.circular(1000),
          )
        ) ,
      ) : Container(),
    ],);
  }

}