import 'package:bright_up_image/constant.dart';
import 'package:bright_up_image/view/custem_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StarRatingSlider extends StatefulWidget {
  const StarRatingSlider({Key? key}) : super(key: key);

  @override
  State<StarRatingSlider> createState() => _StarRatingSliderState();
}

class _StarRatingSliderState extends State<StarRatingSlider> {
  double _rating = 2.5;
  double rating = 2.5;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: Center(
        child: Container(
          width: size.width * 0.9,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.1,
                ),
                Text(
                  "Rate Today\'s Meal",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: size.height * 0.031,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Food Quality",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              width: size.width * 0.9,
                              height: size.height * 0.05,
                              decoration:
                                  BoxDecoration(color: Colors.purple[300],
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                              child: Slider(
                                value: _rating,
                                label: _rating.toString(),
                                divisions: 20,
                                onChanged: (newValue) =>
                                    setState(() => _rating = newValue),
                                min: 0,
                                max: 10,
                                // Customize the appearance for a progress indicator feel
                                activeColor:
                                    Colors.amber, // Adjust color as needed
                                thumbColor:
                                    Colors.orange, // Adjust color as needed
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.031,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text(
                            "Food Quality",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "$rating",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              width: size.width * 0.9,
                              height: size.height * 0.055,
                              decoration:
                                  BoxDecoration(color: Colors.purple[300],
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                              child: Center(
                                child: RatingBar.builder(
                                  initialRating: 2.5,
                                  minRating: 0.5,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  glow: true,
                                  glowColor: AppColors.amberColor,
                                  glowRadius: 5,
                                  unratedColor: Colors.purple[100],
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating1) {
                                    print(rating1);
                                    setState(() {
                                      rating = rating1;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.031,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text(
                            "Food Quality",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],),
                        SizedBox(
                          height: size.height * 0.025,
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              width: size.width * 0.9,
                              height: size.height * 0.09,
                              decoration:
                                  BoxDecoration(color: Colors.purple[300],
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                              child:MySliderState()
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
