import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class RoundCircleIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  const RoundCircleIcon({super.key, required this.icon, required this.size});

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      delay: const Duration(milliseconds: 100),
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white, // Light grey background
            shape: BoxShape.circle// Border radius
          ),
          child: Center(child: Icon(icon, color: Colors.black,size: size,)),
        ),
      ),
    );
  }
}
