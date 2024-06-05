import 'package:bright_up_image/constant.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

class MyHomePageTwo extends StatefulWidget {
  const MyHomePageTwo({super.key});

  @override
  State<MyHomePageTwo> createState() => _MyHomePageTwoState();
}

class _MyHomePageTwoState extends State<MyHomePageTwo> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double appBarHeight = screenHeight * 0.3;
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final size = MediaQuery.of(context).size;
    double width = MediaQuery.of(context).size.width.toDouble();
    double height = size.height * 0.16.toDouble();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: screenHeight * 0.3,
            child: Stack(
              children: [
                Container(
                  height: screenHeight * 0.3,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                        // Color(0xFFa15dd2),
                        // Color(0xFFd25a7f),
                        // Color(0xFF415AE4),
                        // Color(0xFF2A3680),
                        // Color(0xFF202350),

                        Color(0xFF9194fd),
                        Color(0xFFbdbdfd),
                      ])),
                  // child: Image.asset('assets/images/barbackground.png', fit: BoxFit.cover,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.white, width: 0.5)),
                              child: Center(
                                child: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                            ),
                            Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.white, width: 0.5)),
                              child: Center(
                                child: Icon(
                                  Icons.notification_important_rounded,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://services.securetech-consultancy.com/personservice/PersonVerificationData/profilePhoto/4068'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text('Hello Nouman!',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20)),
                              Text('Flutter Developer',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                          color: Colors.white, fontSize: 14)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: screenHeight * 0.2,
              ),
              Container(
                height: screenHeight * 0.7,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100))),
                child: Container(
                  width: screenWidth,
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 36, right: 36, top: 10),
                        child: GridView.count(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          //physics: const NeverScrollableScrollPhysics(),
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          children: [
                            itemDashboard(
                                'STAS',
                                CupertinoIcons.play_rectangle,
                                Color(0xFF1f74ec),
                                'assets/images/stas.png',
                                Color(0xFFeef4fe),
                                1),
                            itemDashboard(
                                'Project Managment',
                                CupertinoIcons.graph_circle,
                                Color(0xFF4e1bd9),
                                'assets/images/project.png',
                                Color(0xFFf3eefe),
                                2),
                            itemDashboard(
                                'STC Support',
                                CupertinoIcons.person_2,
                                Color(0xFF0eb01d),
                                'assets/images/support.png',
                                Color(0xFFddfce0),
                                3),
                            itemDashboard(
                                'VMS',
                                CupertinoIcons.chat_bubble_2,
                                Color(0xfffddca7),
                                'assets/images/vms.png',
                                Color(0xFFfef0db),
                                4),
                            itemDashboard(
                                'Access Control',
                                CupertinoIcons.money_dollar_circle,
                                Color(0xfff4a1fc),
                                'assets/images/access.png',
                                Color(0xFFeef4fe),
                                5),
                            itemDashboard(
                                'Phone Directory',
                                CupertinoIcons.money_dollar_circle,
                                Color(0xFF1f74ec),
                                'assets/images/phone.png',
                                Color(0xfffcecff),
                                6),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  itemDashboard(String title, IconData iconData, Color background, String image,
          Color bg, int index) =>
      Container(
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(5),
          // boxShadow: [
          //   BoxShadow(
          //       offset: const Offset(0, 5),
          //       color: Colors.grey.withOpacity(.5),
          //       spreadRadius: 1,
          //       blurRadius: 2)
          // ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: index == 4 ? background : background.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                height: 65,
                width: 65,
                child: IconButton(
                  icon: index == 1
                      ? FaIcon(
                          FontAwesomeIcons.chartPie,
                          color: Colors.white,
                        )
                      : index == 2
                          ? FaIcon(
                              FontAwesomeIcons.solidFileLines,
                              color: Colors.white,
                            )
                          : index == 3
                              ? FaIcon(
                                  FontAwesomeIcons.circleInfo,
                                  color: Colors.white,
                                )
                              : index == 4
                                  ? FaIcon(
                                      FontAwesomeIcons.solidAddressCard,
                                      color: Colors.white,
                                    )
                                  : index == 5
                                      ? FaIcon(
                                          FontAwesomeIcons.buildingLock,
                                          color: Colors.white,
                                        )
                                      : FaIcon(
                                          FontAwesomeIcons.solidAddressBook,
                                          color: Colors.white,
                                        ),
                  onPressed: () {},
                ),

                // Padding(
                //   padding: const EdgeInsets.all(10.0),
                //   child: Image.asset(image),
                // )
              ),
            ),
            const SizedBox(height: 8),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                title.toUpperCase(),
                style: TextStyle(
                    color: Color(0xFF364B5F),
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ))
          ],
        ),
      );
}
