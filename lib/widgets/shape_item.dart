import 'package:bright_up_image/constant.dart';
import 'package:countup/countup.dart';
import 'package:flutter/material.dart';

class ShapeItem extends StatelessWidget {
  final String type;
  final double count;
  final BoxDecoration decoration;
  final Color color;
  const ShapeItem({super.key, required this.type, required this.count, required this.decoration, required this.color});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: 170,
      width: 170,
      decoration: decoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            type,
            style: TextStyle(
              color: color,
              fontSize: 17,
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Countup(
            begin: 0,
            end: count,
            duration: Duration(seconds: 3),
            separator: ' ',
            style: TextStyle(
                color: color,
                fontSize: 40,
                fontWeight: FontWeight.w600),
          ),
          Text(
            'offers',
            style: TextStyle(
              color: color,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
