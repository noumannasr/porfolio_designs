import 'package:animate_do/animate_do.dart';
import 'package:bright_up_image/constant.dart';
import 'package:bright_up_image/view/dashboard/dashboard_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeFour extends StatefulWidget {
  const HomeFour({super.key});

  @override
  State<HomeFour> createState() => _HomeFourState();
}

class _HomeFourState extends State<HomeFour> {
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
      itemDashboard(
          'Create Event',
          FontAwesomeIcons.add,
          const Color(0xFFF79755),
          'assets/images/stas2.jpg',
          const Color(0xFFeef4fe).withOpacity(0.5),
          0),
      itemDashboard(
          'Events',
          FontAwesomeIcons.calendar,
          const Color(0xFFF7A1BA),
          'assets/images/project2.jpg',
          const Color(0xFFf3eefe),
          1),
      itemDashboard('Guests', FontAwesomeIcons.person, const Color(0xFF0eb01d),
          'assets/images/support.png', const Color(0xFFddfce0), 2),
      itemDashboard('Menu', FontAwesomeIcons.bowlFood, const Color(0xFF9ddbd5),
          'assets/images/vms.png', const Color(0xFFfef0db), 3),
      itemDashboard('Tasks', FontAwesomeIcons.listCheck, const Color(0xFF1f74ec),
          'assets/images/access.png', const Color(0xFFeef4fe), 4),
      itemDashboard('Settings', FontAwesomeIcons.gear, const Color(0xFF1f74ec),
          'assets/images/phone.png', const Color(0xFFeef4fe), 5),
    ];
    return Scaffold(
      backgroundColor: AppColors.lightWhite,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              //borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
             //   Color(0xFFe4cbe8),
             //   Color(0xFFffc4e8),
             //   Color(0xFFffc5c9),
                Color(0xFFffc5c9),
                Color(0xFFffd7c8),
                Color(0xFFffd7c8),

                //Colors.amberAccent,
              ])),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              FadeInUp(
                delay: const Duration(milliseconds: 500),
                child: Container(
                  decoration: const BoxDecoration(
                      //borderRadius: BorderRadius.circular(20),
                      // gradient: LinearGradient(
                      //     begin: Alignment.topLeft,
                      //     end: Alignment.bottomRight,
                      //     colors: [
                      //   Color(0xFFe4cbe8),
                      //   Color(0xFFffc4e8),
                      //   Color(0xFFffc5c9),
                      //   Color(0xFFffd7c8),
                      //   Color(0xFFfedfc7),
                      //   Color(0xFFffedc8),
                      //
                      //   //Colors.amberAccent,
                      // ])

                  ),
                  child: Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              FadeInRight(
                                delay: const Duration(milliseconds: 600),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, right: 0),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        radius: 30,
                                        backgroundImage: CachedNetworkImageProvider(
                                            'https://services.securetech-consultancy.com/personservice/PersonVerificationData/profilePhoto/4068'),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text('Nouman',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              FadeInRight(
                                delay: const Duration(milliseconds: 400),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 4.0),
                                  child: IconButton(
                                    icon: const FaIcon(
                                      FontAwesomeIcons.bell,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                              FadeInRight(
                                delay: const Duration(milliseconds: 450),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: IconButton(
                                    icon: const FaIcon(
                                      FontAwesomeIcons.comment,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TimerItem(title: 'Days', days: '02'),
                            TimerItem(title: 'Hours', days: '05'),
                            TimerItem(title: 'Mins', days: '25'),
                            TimerItem(title: 'Secs', days: '35', mark: false),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 110),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30)),
                        // color: Colors.white
                      ),
                      child: Column(
                        children: [
                          // SizedBox(
                          //   height: size.height * 0.2,
                          // ),
                          SizedBox(
                            //height: deviceHeight * 0.28,
                            child: FadeInUp(
                              delay: const Duration(milliseconds: 200),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 0, bottom: 0),
                                child: GridView.builder(
                                  padding: EdgeInsets.zero,
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  gridDelegate:
                                      const SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent:
                                        120.0, // Set the maximum width for each item
                                    mainAxisSpacing: 8.0,
                                    // Spacing between items on the main axis
                                    crossAxisSpacing:
                                        8.0, // Spacing between items on the cross axis
                                  ),
                                  itemCount: list.length,
                                  itemBuilder: (context, index) {
                                    return list[index];
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  FadeInUp(
                    delay: const Duration(milliseconds: 400),
                    child: Expanded(
                      child: Container(
                        // color: Color(0xffF2F2F2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12, bottom: 5,top: 10,),
                              child: Text(
                                "Upcoming Events",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                            SizedBox(
                              height: deviceHeight * 0.5,
                              child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  itemCount: 10,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (context, index) {
                                    return index > 3
                                        ? SizedBox(
                                            height: height * 0.05,
                                          )
                                        : GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(PageRouteBuilder(
                                          pageBuilder:
                                              (context, animation, secondaryAnimation) =>
                                              MyHomePageD(title: ''),
                                          transitionsBuilder: (context, animation,
                                              secondaryAnimation, child) {
                                            return child;
                                          },
                                        ));
                                      },
                                          child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10,
                                                  right: 10,
                                                  bottom: 4,
                                                  top: 4),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color:
                                                      Colors.white.withOpacity(0.6),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                20),
                                                        child: CachedNetworkImage(
                                                          imageUrl: index == 0
                                                              ? 'https://images.inc.com/uploaded_files/image/1920x1080/getty_479977238_253066.jpg'
                                                              : index == 1
                                                                  ? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWZCLXUQ_hvQxdlG3CyfRQ7bDNpLgBOOOcUzu9uA82Sl6WousfE9-Vxw9S_Pj9m6WuVpA&usqp=CAU'
                                                                  : index == 2 ? 'https://media.istockphoto.com/id/471906412/photo/beautiful-table-setting-for-an-wedding-reception-or-an-event.webp?b=1&s=170667a&w=0&k=20&c=o-cOg8tKKH10TxUg9EAlHbSfjRPoMdgVFzpRpQqTaVI='
                                                          : 'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/eid-ul-fitr-mubarak-story-template-design-9090446d2c6d95ba89c901c7564dd79e_screen.jpg?ts=1712826250'
                                                          ,
                                                          height: 80,
                                                          width: 80,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets.only(
                                                                left: 10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              index == 0
                                                                  ? 'Anniversary'
                                                                  : index == 1 ? "Birthday Party"
                                                              : index == 2 ? "Wedding" : "Eid-ul-Fitr"
                                                              ,
                                                              style: TextStyle(
                                                                  color:
                                                                      Colors.black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 15),
                                                            ),
                                                            SizedBox(
                                                              height: 2,
                                                            ),
                                                            Text(
                                                              "4 July 08:30 PM",
                                                              style: TextStyle(
                                                                  color:
                                                                      Colors.grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                            SizedBox(
                                                              height: 2,
                                                            ),
                                                            Text(
                                                              index == 0 || index == 3
                                                                  ? "3 days left" :
                                                              index == 2 ? "4 days left" :
                                                                   "Tomorrow",
                                                              style: TextStyle(
                                                                  color:
                                                                      Colors.black.withOpacity(0.7),
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                        );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  itemDashboard(String title, IconData iconData, Color background, String image,
          Color bg, int index) =>
      Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.6), //bg,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: index == 0
                              ? [
                                  const Color(0xFFF79755).withOpacity(0.5),
                                  const Color(0xFFD5444E),
                                ]
                              : index == 1
                                  ? [
                                      const Color(0xFF63D4D7).withOpacity(0.5),
                                      const Color(0xFF63D4D7),
                                    ]
                                  : index == 2
                                      ? [
                                          const Color(0xFFD071D3)
                                              .withOpacity(0.9),
                                          const Color(0xFF8D83DE),
                                        ]
                                      : index == 3
                                          ? [
                                              const Color(0xFFF297AE)
                                                  .withOpacity(0.5),
                                              const Color(0xFFF297AE),
                                            ]
                                          : index == 4
                                              ? [
                                                  const Color(0xFF63AEF7)
                                                      .withOpacity(0.5),
                                                  const Color(0xFF63AEF7),
                                                ]
                                              : [
                                                  const Color(0xFFE88E1D)
                                                      .withOpacity(0.5),
                                                  const Color(0xFFE88E1D),
                                                ])),
                  padding: const EdgeInsets.all(0),
                  child: Center(
                    child: FaIcon(
                      iconData,
                      color: Colors.white,
                    ),
                  )

                  // IconButton(
                  //   icon: index == 0
                  //       ?
                  //       const FaIcon(
                  //           FontAwesomeIcons.chartPie,
                  //           color: Colors.white,
                  //         )
                  //       : index == 1
                  //           ? const FaIcon(
                  //               FontAwesomeIcons.solidFileLines,
                  //               color: Colors.white,
                  //             )
                  //           : index == 2
                  //               ? const FaIcon(
                  //                   FontAwesomeIcons.circleInfo,
                  //                   color: Colors.white,
                  //                 )
                  //               : index == 3
                  //                   ? const FaIcon(
                  //                       FontAwesomeIcons.solidAddressCard,
                  //                       color: Colors.white,
                  //                     )
                  //                   : index == 4
                  //                       ? const FaIcon(
                  //                           FontAwesomeIcons.buildingLock,
                  //                           color: Colors.white,
                  //                         )
                  //                       : const FaIcon(
                  //                           FontAwesomeIcons.solidAddressBook,
                  //                           color: Colors.white,
                  //                         ),
                  //   onPressed: () {},
                  // ),
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
                title,
                style: const TextStyle(
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

class TimerItem extends StatelessWidget {
  final String title;
  final String days;
  final bool mark;
  const TimerItem({
    required this.days,
    required this.title,
    this.mark = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              days,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        mark
            ? Column(
                children: [
                  Text(
                    ':',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            : SizedBox(),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
