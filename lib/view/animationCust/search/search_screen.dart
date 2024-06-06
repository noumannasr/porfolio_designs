import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Center(
      child: Container(
        width: size.width*0.6,
        child: Center(
          child: const Text('Sorry I don\'t have API to render the map :(', style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w300, fontSize: 20),textAlign: TextAlign.center,),
        ),
      ),
    );
  }
}
