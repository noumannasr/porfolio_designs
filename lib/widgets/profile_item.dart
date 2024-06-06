import 'package:animate_do/animate_do.dart';
import 'package:bright_up_image/constant.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      delay: const Duration(milliseconds: 100),
      child: const Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 21,
          backgroundImage: NetworkImage(AppImages.profile),
        ),
      ),
    );
  }
}
