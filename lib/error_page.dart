import 'package:aplikasi_carikos/home_page.dart';
import 'package:aplikasi_carikos/theme.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/404.png',
                  width: 300,
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  'Where are you going?',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  'Seems like the page that you were \n requested is already gone',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 210,
                  height: 50,
                  child: RaisedButton(
                    color: purpleColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                    child: Text('Back to Home',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                    ),),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder:(context)=>HomePage(), 
                          ),
                          (route)=>false);
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
