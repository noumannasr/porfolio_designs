import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
    List<Widget> banners1 = [

        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: CachedNetworkImage(
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
            imageUrl:
                'https://img.freepik.com/free-vector/twitter-header-template-international-day-families-celebration_23-2150309258.jpg?size=338&ext=jpg&ga=GA1.1.2082370165.1716422400&semt=ais_user',
            //   placeholder: (context, url) => CircularProgressIndicator(color: darkRedColor,),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),

    ];
    return Scaffold(
      backgroundColor: Color(0xFFF2F3F7),
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
                            Color(0xFFd25a7f),
                            Color(0xFF9194fd),
                          ]
                      )
                  ),
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
                              height:28,
                              width: 28,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 0.5)
                              ),
                              child: Center(
                                child:  Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                            ),


                            Container(
                              height:28,
                              width: 28,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white, width: 0.5)
                              ),
                              child: Center(
                                child:  Icon(
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
                              backgroundImage:
                              NetworkImage('https://services.securetech-consultancy.com/personservice/PersonVerificationData/profilePhoto/4068'),),
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
                                      ?.copyWith(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20)),
                              Text('Flutter Developer',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(color: Colors.white, fontSize: 14)),
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
                    color: Color(0xFFF2F3F7),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Container(
                  width: screenWidth,
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height*0.007,
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 10),
                        child: Container(
                          width: deviceWidth,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: CarouselSlider(
                              items: banners1,
                              options: CarouselOptions(
                                height: size.height * 0.12,
                                aspectRatio: 18 / 9,
                                initialPage: 0,
                                viewportFraction:1.0,
                                //enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                                // padEnds: true,
                                // enableInfiniteScroll: true,
                                reverse: false,
                                autoPlay: true,
                                autoPlayInterval: const Duration(seconds: 3),
                                autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                                autoPlayCurve: Curves.fastOutSlowIn,
                                // enlargeFactor: 0.5,
                                onPageChanged: (index, reason) {
                                  //vm.setCurrentIndex(index);
                                },
                                scrollDirection: Axis.horizontal,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: size.height*0.007,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 16, right: 16, top: 10),
                        child: GridView.count(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          //physics: const NeverScrollableScrollPhysics(),
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          children: [
                            itemDashboard('STAS', CupertinoIcons.play_rectangle,
                                Color(0xFF1f74ec), 'assets/images/stas.png', Color(0xFFeef4fe)),
                            itemDashboard('Project',
                                CupertinoIcons.graph_circle, Color(0xFF4e1bd9), 'assets/images/project.png',Color(0xFFf3eefe)),
                            itemDashboard('STC Support', CupertinoIcons.person_2,
                                Color(0xFF0eb01d),'assets/images/support.png',Color(0xFFddfce0)),
                            itemDashboard(
                                'VMS', CupertinoIcons.chat_bubble_2, Color(0xFF9ddbd5),'assets/images/vms.png',Color(0xFFfef0db)),
                            itemDashboard('Access',
                                CupertinoIcons.money_dollar_circle, Color(0xFF1f74ec),'assets/images/access.png',Color(0xFFeef4fe)),
                            itemDashboard('Contacts',
                                CupertinoIcons.money_dollar_circle, Color(0xFF1f74ec),'assets/images/phone.png',Color(0xFFeef4fe)),
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

  itemDashboard(String title, IconData iconData, Color background, String image, Color bg) => Container(
        decoration: BoxDecoration(
            color: Colors.white,//bg,
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
                    color: background.withOpacity(0.4),
                    shape: BoxShape.circle,
                  ),
                  height: 55,
                  width: 55,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(image),
                  )),
            ),
            const SizedBox(height: 8),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Text(
                title.toUpperCase(),
                style: TextStyle(color: Color(0xFF364B5F), fontSize: 11, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ))
          ],
        ),
      );
}
