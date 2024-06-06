import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class MySearchWidget extends StatelessWidget {
  const MySearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: const Duration(milliseconds: 800),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 8,top: 8),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200], // Light grey background
            borderRadius: BorderRadius.circular(30.0), // Border radius
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, ),
            child: TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 10),
                icon: Icon(Icons.search,color: Colors.black), // Search icon prefix
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.black),
                border: InputBorder.none, // Remove default border
              ),
            ),
          ),
        ),
      ),
    );
  }
}