import 'package:animate_do/animate_do.dart';
import 'package:bright_up_image/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AnimationCustom extends StatefulWidget {
  const AnimationCustom({super.key});

  @override
  State<AnimationCustom> createState() => _AnimationCustomState();
}

class _AnimationCustomState extends State<AnimationCustom> {
  bool animate = true;
  late AnimationController controller;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft, // Change this for desired direction
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFF8F8F8),
            Color(0xFFFAD8AE),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leadingWidth: size.width * 0.4,
          leading: FadeInLeft(
            delay: Duration(milliseconds: 800 ),

            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 8, bottom: 8),
              child: Container(
                height: size.height * 0.03,
                width: size.width * 0.4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: AppColors.lightPatel,
                      size: 16,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Saint Petetrsburg',
                      style:
                          TextStyle(color: AppColors.lightPatel, fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
          ),
          actions: [
            FadeInRight(
              delay: Duration(milliseconds: 100 ),

              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://services.securetech-consultancy.com/personservice/PersonVerificationData/profilePhoto/4068'),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            FadeInUp(
              delay: Duration(milliseconds: 1000),
                child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 8, bottom: 8),
              child: Text(
                'Hi Marina',
                style: TextStyle(color: AppColors.lightPatel, fontSize: 18),
              ),
            )),
            FadeInUp(
                delay: Duration(milliseconds: 1500 ),

                child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 8, bottom: 8),
              child: Container(
                  width: size.width * 0.6,
                  child: Text(
                    'let\'s select your perfect place',
                    style: TextStyle(
                        color: AppColors.lightBlack,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                    maxLines: 2,
                  )),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FadeInUp(
                  delay: Duration(milliseconds: 2000 ),
                  child: Container(
                    height: 170,
                    width: 170,
                    decoration: BoxDecoration(
                        color: AppColors.amberColor,
                        shape: BoxShape.circle),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: size.height*0.01,
                        ),
                        Text(
                          'BUY',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          height: size.height*0.03,
                        ),
                        Text(
                          '1034',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Text(
                          'offers',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),

                      ],
                    ),

                  ),
                ),
                FadeInUp(
                  delay: Duration(milliseconds: 2000 ),
                  child: Container(
                    height: 170,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Color(0xFFFEFAF5),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: size.height*0.01,
                        ),
                        Text(
                          'BUY',
                          style: TextStyle(
                            color: AppColors.lightPatel,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          height: size.height*0.03,
                        ),
                        Text(
                          '2212',
                          style: TextStyle(
                              color: AppColors.lightPatel,
                              fontSize: 40,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        Text(
                          'offers',
                          style: TextStyle(
                            color: AppColors.lightPatel,
                            fontSize: 14,
                          ),
                        ),

                      ],
                    ),

                  ),
                ),
              ],
            ),


            // GridView.custom(
            //   shrinkWrap: true,
            //   gridDelegate: SliverQuiltedGridDelegate(
            //     crossAxisCount: 4,
            //     mainAxisSpacing: 4,
            //     crossAxisSpacing: 4,
            //     repeatPattern: QuiltedGridRepeatPattern.inverted,
            //     pattern: const [
            //       QuiltedGridTile(2, 2),
            //       QuiltedGridTile(1, 1),
            //       QuiltedGridTile(1, 1),
            //       QuiltedGridTile(1, 2),
            //     ],
            //   ),
            //   childrenDelegate: SliverChildBuilderDelegate(
            //         (context, index) => Tile(index: index),
            //   ),
            // ),

          ],
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({
    Key? key,
    required this.index,
    this.extent,
    this.backgroundColor,
    this.bottomSpace,
  }) : super(key: key);

  final int index;
  final double? extent;
  final double? bottomSpace;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final child = Container(
      color: backgroundColor ?? Colors.white,
      height: extent,
      child: Center(
        child: CircleAvatar(
          minRadius: 20,
          maxRadius: 20,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          child: Text('$index', style: const TextStyle(fontSize: 20)),
        ),
      ),
    );

    if (bottomSpace == null) {
      return child;
    }

    return Column(
      children: [
        Expanded(child: child),
        Container(
          height: bottomSpace,
          color: Colors.green,
        )
      ],
    );
  }
}


class Square extends StatelessWidget {
  const Square({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: const Color(0xff67549B),
    );
  }
}
