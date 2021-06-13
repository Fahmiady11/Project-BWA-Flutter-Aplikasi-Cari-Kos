import 'package:aplikasi_carikos/models/tips.dart';
import 'package:aplikasi_carikos/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget{
  final Tips tips;
  TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          Image.asset(tips.imageUrl,
          width: 80,
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tips.title,
              style: blackTextStyle.copyWith(
                fontSize: 18,
              ),),
              SizedBox(height:4,),
              Text('Updated ${tips.updateAt}',
              style: greyTextStyle.copyWith(
                fontSize: 14,
              ),)
            ],

          ),
          Spacer(),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.arrow_forward_ios_rounded,
            color: greyColor,),
          ),
          
    ],
    );
  }
}