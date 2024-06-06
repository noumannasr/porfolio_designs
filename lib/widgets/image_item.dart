import 'package:bright_up_image/widgets/round_circle_icon.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget {
  final String image;
  final double height;
  final double width;
  const ImageItem(
      {super.key,
      required this.image,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: image.toString(),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20,),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFD9D2CB),
                      borderRadius: BorderRadius.circular(30)),
                  width: width,
                  height: size.height * 0.05,
                  child: Center(child: Text('Gladko St', style: TextStyle(color: Colors.black, fontSize: 13),)),
                ),
              ),
              RoundCircleIcon(
                icon: Icons.arrow_forward_ios_outlined,
                size: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
