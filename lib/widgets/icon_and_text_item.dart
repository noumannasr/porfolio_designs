import 'package:animate_do/animate_do.dart';
import 'package:bright_up_image/constant.dart';
import 'package:flutter/material.dart';

class IconAndTextWidget extends StatelessWidget {
  const IconAndTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return FadeInLeft(
      delay: const Duration(milliseconds: 200),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 8, bottom: 8),
        child: Container(
          height: size.height * 0.03,
          width: size.width * 0.4,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)),
          child: const Row(
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
    );
  }
}