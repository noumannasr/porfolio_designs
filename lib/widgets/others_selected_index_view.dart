import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class IndexView extends StatelessWidget {
  final String text;
  const IndexView({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
        delay: const Duration(milliseconds: 500),
        child: Center(
            child: Text(
      text,
      style: const TextStyle(
          color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
    )));
  }
}
