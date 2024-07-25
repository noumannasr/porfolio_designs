import 'package:animate_do/animate_do.dart';
import 'package:bright_up_image/constant.dart';
import 'package:bright_up_image/view/cakeRecipes/cakeDetail/cake_detail_view.dart';
import 'package:bright_up_image/view/cakeRecipes/cake_recipe_vm.dart';
import 'package:bright_up_image/view/dashboard/dashboard_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CakeRecipeView extends StatefulWidget {
  const CakeRecipeView({super.key});

  @override
  State<CakeRecipeView> createState() => _CakeRecipeViewState();
}

class _CakeRecipeViewState extends State<CakeRecipeView> {
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
          'Mango Cake',
          AppImages.mangoCake,
          const Color(0xFFF7BE55),
          'assets/images/stas2.jpg',
          const Color(0xFFeef4fe).withOpacity(0.5),
          0),
      itemDashboard(
          'Choclate Cake',
          AppImages.choclateCake,
          const Color(0xFF4F230C),
          'assets/images/project2.jpg',
          const Color(0xFFf3eefe),
          1),
      itemDashboard(
          'Red Velvet Cake',
          AppImages.redVelvetCake,
          const Color(0xfff32f3f),
          'assets/images/support.png',
          const Color(0xFFddfce0),
          2),
      itemDashboard('Fruit Cake', AppImages.fruitCake, const Color(0xfff3c35d),
          'assets/images/vms.png', const Color(0xFFfef0db), 3),
      itemDashboard(
          'Sponge Cake',
          AppImages.spongeCake,
          const Color(0xFF1f74ec),
          'assets/images/access.png',
          const Color(0xFFeef4fe),
          4),
      itemDashboard(
          'Carrot Cake',
          AppImages.carrotCake,
          const Color(0xffe7f568),
          'assets/images/phone.png',
          const Color(0xFFeef4fe),
          5),
    ];
    return Scaffold(
      backgroundColor: AppColors.lightWhite,
      appBar: AppBar(
        backgroundColor: const Color(0xFFffd7c8),
        title: const Text(
          "Sweet Cake's",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              //borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color(0xFFffd7c8),
                Color(0xFFffd7c8),
                Color(0xFFfff9c6),

                //Colors.amberAccent,
              ])),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
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
                                  physics: const NeverScrollableScrollPhysics(),
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
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 12,
                                bottom: 5,
                                top: 10,
                              ),
                              child: Text(
                                "Popular Cakes",
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
                                  itemCount: CakeRecipeVm.popularCakes.length,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (context, index) {
                                    final item =
                                        CakeRecipeVm.popularCakes[index];
                                    return index > 3
                                        ? SizedBox(
                                            height: height * 0.05,
                                          )
                                        : GestureDetector(
                                            onTap: () {
                                              Navigator.of(context)
                                                  .push(PageRouteBuilder(
                                                pageBuilder: (context,
                                                        animation,
                                                        secondaryAnimation) =>
                                                    CakeDetailView(
                                                  cakeModel: item,
                                                ),
                                                transitionsBuilder: (context,
                                                    animation,
                                                    secondaryAnimation,
                                                    child) {
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
                                                  color: Colors.white
                                                      .withOpacity(0.4),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl: item.image,
                                                          height: 80,
                                                          width: 80,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              item.title,
                                                              style: const TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 15),
                                                            ),
                                                            const SizedBox(
                                                              height: 2,
                                                            ),
                                                            Text(
                                                              item.time,
                                                              style: const TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                            const SizedBox(
                                                              height: 2,
                                                            ),
                                                            Text(
                                                              item.type,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black
                                                                      .withOpacity(
                                                                          0.7),
                                                                  fontSize: 12,
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

  itemDashboard(String title, String imageCake, Color background, String image,
          Color bg, int index) =>
      Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4), //bg,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                  height: 55,
                  width: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(0),
                  child: Center(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      imageUrl: imageCake,
                      fit: BoxFit.cover,
                    ),
                  ))

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
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              days,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        mark
            ? const Column(
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
            : const SizedBox(),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}
