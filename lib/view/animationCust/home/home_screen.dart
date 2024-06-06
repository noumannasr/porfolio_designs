import 'package:animate_do/animate_do.dart';
import 'package:bright_up_image/constant.dart';
import 'package:bright_up_image/widgets/image_item.dart';
import 'package:bright_up_image/widgets/shape_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           SizedBox(
            height: size.height*0.015,
          ),
          FadeInUp(
              delay: const Duration(milliseconds: 1200),
              child: const Padding(
                padding: EdgeInsets.only(left: 10, top: 8, bottom: 8),
                child: Text(
                  'Hi Marina',
                  style: TextStyle(color: AppColors.lightPatel, fontSize: 18),
                ),
              )),
          FadeInUp(
              delay: const Duration(milliseconds: 1700),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 8, bottom: 8),
                child: SizedBox(
                    width: size.width * 0.6,
                    child: const Text(
                      'let\'s select your perfect place',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                      maxLines: 2,
                    )),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FadeInUp(
                  delay: const Duration(milliseconds: 2200),
                  child: const ShapeItem(
                    type: 'BUY',
                    count: 1034,
                    decoration: BoxDecoration(
                        color: AppColors.amberColor, shape: BoxShape.circle),
                    color: Colors.white,
                  )),
              FadeInUp(
                delay: const Duration(milliseconds: 2200),
                child: ShapeItem(
                  type: 'RENT',
                  count: 2212,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFEFAF5),
                      borderRadius: BorderRadius.circular(20)),
                  color: AppColors.lightPatel,
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          Column(
            children: [
              FadeInUp(
                delay: const Duration(milliseconds: 2700),
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      FadeInUp(
                        delay: const Duration(milliseconds: 2700),
                        child: ImageItem(
                          image: AppImages.interiorOne,
                          height: size.height * 0.23,
                          width: size.width,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FadeInUp(
                            delay: const Duration(milliseconds: 2700),
                            child: Container(
                              width: size.width*0.5,
                              decoration: BoxDecoration(
                                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  FadeInUp(
                                    delay: const Duration(milliseconds: 2700),
                                    child: ImageItem(
                                      image: AppImages.interiorTwo,
                                      height: size.height * 0.3,
                                      width: size.width,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          FadeInUp(
                            delay: const Duration(milliseconds: 2700),
                            child: Container(
                              width: size.width*0.5,
                              decoration: BoxDecoration(
                                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  FadeInUp(
                                    delay: const Duration(milliseconds: 2700),
                                    child: ImageItem(
                                      image: AppImages.interiorThree,
                                      height: size.height * 0.3,
                                      width: size.width,
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
                ),
              ),

            ],
          ),
          SizedBox(
            height: size.height * 0.15,
          ),
        ],
      ),
    );
  }
}
