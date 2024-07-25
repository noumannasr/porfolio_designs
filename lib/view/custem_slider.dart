import 'package:flutter/material.dart';

class MySliderState extends StatefulWidget {
  const MySliderState({super.key});

  @override
  State<MySliderState> createState() => _MySliderStateState();
}

class _MySliderStateState extends State<MySliderState> {
  double _sliderValue = 5;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.height*0.055,

              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.purple[700],
                  inactiveTrackColor: Colors.purple[100],
                  trackHeight: 6.0,
                  thumbShape: CustomSliderThumbShape(),
                  thumbColor: Colors.transparent,
                  activeTickMarkColor: Colors.purple[700],
                  inactiveTickMarkColor: Colors.purple[100],
                  valueIndicatorColor: Colors.transparent,
                  valueIndicatorTextStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.purple[300],),
                  child: Slider(
                    value: _sliderValue,
                    min: 0,
                    max: 10,
                    divisions: 10,
                    label: _sliderValue.round().toString(),
                    onChanged: (newValue) {
                      setState(() {
                        _sliderValue = newValue;
                      });
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text('Value: $_sliderValue', style: TextStyle(color: Colors.black, fontSize: 14),),
            ),
          ],
        ),
      ),
    );
  }
}


class CustomSliderThumbShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(20, 20);
  }

  @override
  void paint(
      PaintingContext context,
      Offset center, {
        required Animation<double> activationAnimation,
        required Animation<double> enableAnimation,
        required bool isDiscrete,
        required TextPainter labelPainter,
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required TextDirection textDirection,
        required double value,
        required double textScaleFactor,
        required Size sizeWithOverflow,
      }) {
    final Canvas canvas = context.canvas;

    TextSpan span = TextSpan(
      text: '★',
      style: TextStyle(
        color: Colors.yellow[600],
        fontSize: 40.0,
      ),
    );

    TextPainter tp = TextPainter(
      text: span,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    tp.layout();
    tp.paint(
      canvas,
      Offset(center.dx - (tp.width / 2.5), center.dy - (tp.height / 1.7)),
    );
  }
}