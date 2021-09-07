import 'package:fill/constants/style_constant.dart';
import 'package:fill/models/carousel_model.dart';
import 'package:fill/models/keep_explore_model.dart';
import 'package:fill/models/special_coupon_model.dart';
import 'package:fill/widget/bottom_navigation_fill.dart';
import 'package:flutter/material.dart';
import 'package:fill/constants/color_constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Setting up AppBar
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: mBackgroundColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/Fill_Icon_Red_Space_with_F.png',
                      scale: 10),
                  Text("  "),
                  Image.asset('assets/images/Fill_Icon_fill_.png', scale: 4),
                ],
              ),
              Row(
                children: [
                  Text("Hi, User!!   ", style: mTitleStyle),
                  Image.asset('assets/images/user.png', scale: 3.5),
                ],
              ),
            ],
          ),
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {},
          // )
          // elevation: 0,
        ),
        // Setting up Background Color
        backgroundColor: mBackgroundColor,

        // Seeting up Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationFill(),

        // Body
        body: Container(
          child: ListView(physics: ClampingScrollPhysics(), children: <Widget>[
            //Promos Section
            Padding(
              padding: EdgeInsets.only(left: 16, top: 20, bottom: 10),
              child: Text(
                'Ready to Dive in?',
                style: mTitleStyle,
              ),
            ),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 16, right: 16),
                width: MediaQuery.of(context).size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 190,
                          child: Swiper(
                            onIndexChanged: (index) {
                              setState(() {
                                _current = index;
                              });
                            },
                            autoplay: true,
                            layout: SwiperLayout.DEFAULT,
                            itemCount: carousels.length,
                            itemBuilder: (BuildContext context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        carousels[index].image,
                                      ),
                                      fit: BoxFit.fill),
                                ),
                              );
                            },
                          )),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: map<Widget>(carousels, (index, image) {
                                return Container(
                                  alignment: Alignment.centerLeft,
                                  height: 6,
                                  width: 6,
                                  margin: EdgeInsets.only(right: 8),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: _current == index
                                          ? mRedColor
                                          : mGreyColor),
                                );
                              }),
                            ),
                            // More
                            Text(
                              'More...',
                              style: mMoreStyle,
                            )
                          ])
                    ])),

            // Service Section
            Padding(
              padding: EdgeInsets.only(left: 16, top: 24),
              child: Text(
                'Let\'s fill your needs!',
                style: mTitleStyle,
              ),
            ),
            Container(
                height: 146,
                margin: EdgeInsets.only(left: 16, right: 7),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        // Food
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(right: 8, top: 10),
                              padding: EdgeInsets.only(left: 16),
                              height: 64,
                              decoration: BoxDecoration(
                                color: mFillColor,
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: mBorderColor, width: 1),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    height: 30,
                                    child: Image.asset(
                                      'assets/svg/food.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('Food',
                                              style: mServiceTitleStyle),
                                          Text('Are You Hungry?',
                                              style: mServiceSubtitleStyle),
                                        ],
                                      ))
                                ],
                              )),
                        ),
                        // Groceries
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(right: 8, top: 10),
                              padding: EdgeInsets.only(left: 16),
                              height: 64,
                              decoration: BoxDecoration(
                                color: mFillColor,
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: mBorderColor, width: 1),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(bottom: 0),
                                    height: 33,
                                    child: Image.asset(
                                      'assets/svg/groceries2.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 13),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('Groceries',
                                              style: mServiceTitleStyle),
                                          Text('Fill Your Fridge',
                                              style: mServiceSubtitleStyle),
                                        ],
                                      ))
                                ],
                              )),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        // Transport
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(right: 8, top: 8),
                              padding: EdgeInsets.only(left: 16),
                              height: 64,
                              decoration: BoxDecoration(
                                color: mFillColor,
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: mBorderColor, width: 1),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    height: 35,
                                    child: Image.asset(
                                      'assets/svg/transport.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 11),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('Transport',
                                              style: mServiceTitleStyle),
                                          Text('Quick and Easy',
                                              style: mServiceSubtitleStyle),
                                        ],
                                      ))
                                ],
                              )),
                        ),
                        // Delivery
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(right: 8, top: 8),
                              padding: EdgeInsets.only(left: 16),
                              height: 64,
                              decoration: BoxDecoration(
                                color: mFillColor,
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: mBorderColor, width: 1),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(bottom: 3),
                                    height: 34,
                                    child: Image.asset(
                                      'assets/svg/delivery.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('Delivery',
                                              style: mServiceTitleStyle),
                                          Text('Pass Your Baton',
                                              style: mServiceSubtitleStyle),
                                        ],
                                      ))
                                ],
                              )),
                        )
                      ],
                    )
                  ],
                )),

            // Special Coupons
            Padding(
              padding: EdgeInsets.only(left: 16, top: 24, bottom: 5),
              child: Text(
                'Special coupons for you!',
                style: mTitleStyle,
              ),
            ),
            Container(
              height: 140,
              child: ListView.builder(
                  itemCount: specials.length,
                  padding: EdgeInsets.only(left: 11, right: 16),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          height: 140,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: mBorderColor, width: 1)),
                          child: Column(children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12)),
                                  image: DecorationImage(
                                      image: AssetImage(specials[index].image),
                                      fit: BoxFit.fill)),
                              height: 85,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                specials[index].name,
                                style: mSpecialOfferTitleStyle,
                                // textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(height: 3),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              alignment: Alignment.bottomLeft,
                              child: Text(specials[index].text,
                                  style: mSpecialOfferSubtitleStyle),
                            ),
                          ]),
                        ));
                  }),
            ),

            // Keep Exploring
            Padding(
              padding: EdgeInsets.only(left: 16, top: 20, bottom: 5),
              child: Text(
                'Keep Exploring...',
                style: mTitleStyle,
              ),
            ),
            Container(
                // padding: EdgeInsets.only(right: 16),
                height: 260,
                child: ListView.builder(
                  itemCount: explores.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.only(left: 16, top: 8),
                        width: 170,
                        child: Column(
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Container(
                                    height: 170,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                explores[index].image),
                                            fit: BoxFit.cover))),
                                Positioned(
                                    width: 170,
                                    bottom: -6,
                                    child: SvgPicture.asset(
                                        'assets/svg/travlog_bottom_gradient.svg')),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(left: 5),
                              child: Text(explores[index].content,
                                  maxLines: 3,
                                  style: mKeepExploringContentStyle),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Container(
                                        height: 14,
                                        child:
                                            Image.asset('assets/svg/date.png')),
                                    Text(" "),
                                    Text(explores[index].date,
                                        style: mKeepExploringSubtitleStyle),
                                  ],
                                ))
                          ],
                        ));
                  },
                ))
          ]),
        ));
  }
}
