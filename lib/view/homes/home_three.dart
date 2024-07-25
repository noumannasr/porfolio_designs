import 'package:animate_do/animate_do.dart';
import 'package:bright_up_image/constant.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeThree extends StatefulWidget {
  const HomeThree({super.key});

  @override
  State<HomeThree> createState() => _HomeThreeState();
}

class _HomeThreeState extends State<HomeThree> {
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

    List<Widget> list = [
      itemDashboard('STAS', CupertinoIcons.play_rectangle, Color(0xFFF79755),
          'assets/images/stas2.jpg', Color(0xFFeef4fe), 0),
      itemDashboard('Projects', CupertinoIcons.graph_circle, Color(0xFFF7A1BA),
          'assets/images/project2.jpg', Color(0xFFf3eefe), 1),
      itemDashboard('STC Support', CupertinoIcons.person_2, Color(0xFF0eb01d),
          'assets/images/support.png', Color(0xFFddfce0), 2),
      itemDashboard('VMS', CupertinoIcons.chat_bubble_2, Color(0xFF9ddbd5),
          'assets/images/vms.png', Color(0xFFfef0db), 3),
      itemDashboard('Access', CupertinoIcons.money_dollar_circle,
          Color(0xFF1f74ec), 'assets/images/access.png', Color(0xFFeef4fe), 4),
      itemDashboard('Contacts', CupertinoIcons.money_dollar_circle,
          Color(0xFF1f74ec), 'assets/images/phone.png', Color(0xFFeef4fe), 5),
    ];
    return Scaffold(
      backgroundColor: AppColors.bg,
      appBar: AppBar(
        backgroundColor: AppColors.bg,
        leading: FadeInLeft(
          delay: Duration(milliseconds: 300),

          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          FadeInLeft(
            delay: Duration(milliseconds: 400),

            child: Padding(
              padding: EdgeInsets.only(right: 4.0),
              child: IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.bell,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
          ),
          FadeInRight(
            delay: Duration(milliseconds: 450),

            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.comment,
                  color: Colors.black,              ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FadeInRight(
              delay: Duration(milliseconds: 600),

              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFF7AFC4),
                            Color(0xFFE9938F),
                            //AppColors.lightPink,
                            AppColors.pink,
                          ])),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text('Muhammad Nouman Nasr',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16)),
                            Text('Flutter Developer',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                        color: Colors.white, fontSize: 14)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    AppColors.darkPurple,
                                    Color(0xFFF76C70),
                                  ])),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://services.securetech-consultancy.com/personservice/PersonVerificationData/profilePhoto/4068'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height*0.007,
            ),

            FadeInUp(
              delay: Duration(milliseconds: 1000),

              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent:
                        160.0, // Set the maximum width for each item
                    mainAxisSpacing: 10.0,
                    // Spacing between items on the main axis
                    crossAxisSpacing:
                        10.0, // Spacing between items on the cross axis
                  ),
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return list[index];
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  itemDashboard(String title, IconData iconData, Color background, String image,
          Color bg, int index) =>
      Container(
        decoration: BoxDecoration(
          color: Colors.white, //bg,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: index == 0
                            ? [
                                Color(0xFFF79755).withOpacity(0.5),
                                Color(0xFFD5444E),
                              ]
                            : index == 1
                                ? [
                                    Color(0xFF63D4D7).withOpacity(0.5),
                                    Color(0xFF63D4D7),
                                  ]
                                : index == 2
                                    ? [
                                        Color(0xFFD071D3).withOpacity(0.9),
                                        Color(0xFF8D83DE),
                                      ]
                                    : index == 3
                                        ? [
                                            Color(0xFFF297AE).withOpacity(0.5),
                                            Color(0xFFF297AE),
                                          ]
                                        : index == 4
                                            ? [
                                                Color(0xFF63AEF7)
                                                    .withOpacity(0.5),
                                                Color(0xFF63AEF7),
                                              ]
                                            : [
                                                Color(0xFFE88E1D)
                                                    .withOpacity(0.5),
                                                Color(0xFFE88E1D),
                                              ])),
                padding: const EdgeInsets.all(0),
                child: IconButton(
                  icon: index == 0
                      ? FaIcon(
                          FontAwesomeIcons.chartPie,
                          color: Colors.white,
                        )
                      : index == 1
                          ? FaIcon(
                              FontAwesomeIcons.solidFileLines,
                              color: Colors.white,
                            )
                          : index == 2
                              ? FaIcon(
                                  FontAwesomeIcons.circleInfo,
                                  color: Colors.white,
                                )
                              : index == 3
                                  ? FaIcon(
                                      FontAwesomeIcons.solidAddressCard,
                                      color: Colors.white,
                                    )
                                  : index == 4
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
                // child: Padding(
                //   padding: const EdgeInsets.all(0.0),
                //   child: Image.asset(
                //     image,
                //   ),
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
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ))
          ],
        ),
      );
}
