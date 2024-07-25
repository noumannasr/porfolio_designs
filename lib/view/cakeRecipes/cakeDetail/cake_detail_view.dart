import 'package:bright_up_image/constant.dart';
import 'package:bright_up_image/model/cake_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CakeDetailView extends StatefulWidget {
  final CakeModel cakeModel;
  const CakeDetailView({super.key, required this.cakeModel});

  @override
  State<CakeDetailView> createState() => _CakeDetailViewState();
}

class _CakeDetailViewState extends State<CakeDetailView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.lightWhite,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            //borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [

                    Color(0xFFffd7c8),
                    Color(0xFFfff9c6),

                    //Colors.amberAccent,
                  ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                      height: height * 0.4,
                      width: width,
                      child: CachedNetworkImage(
                        imageUrl: widget.cakeModel.image.toString(),
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    height: height * 0.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14, top: 25),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color:AppColors.primaryColor.withOpacity(0.8),
                                shape: BoxShape.circle
                              ),
                              child: Icon(Icons.arrow_back_ios_new, color: Colors.black,),
                            ),
                          ),
                        ),
                        Container(
                          width: width,
                          height: height * 0.07,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 12,
                              bottom: 5,
                              top: 10,
                            ),
                            child: Text(
                              widget.cakeModel.title,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              DetailItem( title: 'Ingredients', text: widget.cakeModel.ingredients,),
              DetailItem( title: 'Direction', text: widget.cakeModel.description,),
              SizedBox(
                height: height*0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailItem extends StatelessWidget {
  final String title;
  final String text;
  const DetailItem({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Padding(
        padding: const EdgeInsets.only(
          left: 12,
          bottom: 5,
          top: 10,
        ),
        child: Text(
          title,
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: width,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.6),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(text,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
          ),
        ),
      ),
    ],);
  }
}
