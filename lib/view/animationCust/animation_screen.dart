import 'package:animate_do/animate_do.dart';
import 'package:bright_up_image/constant.dart';
import 'package:bright_up_image/widgets/image_item.dart';
import 'package:bright_up_image/widgets/shape_item.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:countup/countup.dart';
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
            delay: Duration(milliseconds: 800),
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
              delay: Duration(milliseconds: 100),
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
                delay: Duration(milliseconds: 1500),
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
                    delay: Duration(milliseconds: 2000),
                    child: ShapeItem(
                      type: 'BUY',
                      count: 1034,
                      decoration: BoxDecoration(
                          color: AppColors.amberColor, shape: BoxShape.circle),
                      color: Colors.white,
                    )),
                FadeInUp(
                  delay: Duration(milliseconds: 2000),
                  child: ShapeItem(
                    type: 'RENT',
                    count: 2212,
                    decoration: BoxDecoration(
                        color: Color(0xFFFEFAF5),
                        borderRadius: BorderRadius.circular(20)),
                    color: AppColors.lightPatel,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.015,
            ),
            FadeInUp(
              delay: Duration(milliseconds: 2500),
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    FadeInUp(
                      delay: Duration(milliseconds: 2500),
                      child: ImageItem(
                        image:
                            'https://www.decorpot.com/images/blogimage2047193526how-to-judge-your-style-for-home-interior-design-plans.jpg',
                        height: size.height * 0.23,
                        width: size.width,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
