import 'package:aplikasi_carikos/models/city.dart';
import 'package:aplikasi_carikos/models/space.dart';
import 'package:aplikasi_carikos/models/tips.dart';
import 'package:aplikasi_carikos/providers/space_provider.dart';
import 'package:aplikasi_carikos/theme.dart';
import 'package:aplikasi_carikos/widget/bottom_navbar_item.dart';
import 'package:aplikasi_carikos/widget/city_card.dart';
import 'package:aplikasi_carikos/widget/space_card.dart';
import 'package:aplikasi_carikos/widget/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);
    //spaceProvider.getRecommendedSpaces();
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: edge,
          ),
          child: ListView(
            //Note:Explore Now
            children: [
              SizedBox(
                height: edge,
              ),
              Text(
                'Explore Now',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              //Note:Mencari kosan yang nyaman
              Text(
                'Mencari Kosan yang nyaman',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Popular Cities',
                style: regulerTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 24),
                    CityCard(City(
                        id: 1,
                        name: 'Jakarta',
                        imageUrl: 'assets/images/pic-8.png')),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(City(
                        id: 2,
                        isPopular: true,
                        name: 'Bandung',
                        imageUrl: 'assets/images/pic-7.png')),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(City(
                        id: 3,
                        name: 'Surabaya',
                        imageUrl: 'assets/images/pic-6.png')),
                    SizedBox(
                      width: 24,
                    ),
                    CityCard(City(
                        id: 4,
                        name: 'Bogor',
                        imageUrl: 'assets/images/bogor.jpg')),
                    SizedBox(
                      width: 24,
                    ),
                    CityCard(City(
                        id: 5,
                        isPopular: true,
                        name: 'Aceh',
                        imageUrl: 'assets/images/aceh.jpg')),
                    SizedBox(
                      width: 24,
                    ),
                    CityCard(City(
                        id: 6,
                        name: 'Palembang',
                        imageUrl: 'assets/images/palembang.jpg')),
                    SizedBox(
                      width: 24,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              //Note:RECOMMENDED SPACE
              Text(
                'Recommended Space',
                style: regulerTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              FutureBuilder(
                future: spaceProvider.getRecommendedSpaces(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Space> data = snapshot.data;
                    int index = 0;

                    return Column(
                      children: data.map((item) {
                        index++;
                        return Container(
                          margin: EdgeInsets.only(
                            top: index == 1 ? 0 : 30,
                          ),
                          child: SpaceCard(item),
                        );
                      }).toList(),
                    );
                    /*return Column(
                      children: [
                        SpaceCard(
                          Space(
                            id: 1,
                            name: 'Hotel Mawar',
                            imageUrl: 'assets/images/image_15.png',
                            country: 'Surabaya,indonesia',
                            price: 100,
                            rating: 4,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SpaceCard(
                          Space(
                            id: 2,
                            name: 'Hotel Melati',
                            imageUrl: 'assets/images/image_14.png',
                            country: 'Jakarta,indonesia',
                            price: 200,
                            rating: 3,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SpaceCard(
                          Space(
                            id: 3,
                            name: 'Hotel Matahari',
                            imageUrl: 'assets/images/image_13.png',
                            country: 'Malang,indonesia',
                            price: 150,
                            rating: 4,
                          ),
                        ),
                      ],
                    );*/
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Tips & Guidance',
                style: regulerTextStyle.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  TipsCard(Tips(
                      id: 1,
                      title: 'City Guidilines',
                      imageUrl: 'assets/images/icon-1.png',
                      updateAt: '20 Apr')),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                        id: 2,
                        title: 'Jakarta fairship',
                        imageUrl: 'assets/images/icon.png',
                        updateAt: '8 Mar'),
                  ),
                ],
              ),
              SizedBox(
                height: 80 + edge,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        decoration: BoxDecoration(
            color: Color(0xffF6F7F8), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbaritem(
              imageUrl: 'assets/images/Icon_home_solid.png',
              isActive: true,
            ),
            BottomNavbaritem(
              imageUrl: 'assets/images/Icon_mail_solid.png',
              isActive: false,
            ),
            BottomNavbaritem(
              imageUrl: 'assets/images/Icon_card_solid.png',
              isActive: false,
            ),
            BottomNavbaritem(
              imageUrl: 'assets/images/Icon_love_solid.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
