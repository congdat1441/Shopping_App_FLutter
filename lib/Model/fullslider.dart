import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

class FullSlider extends StatelessWidget {
  const FullSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
        body: SizedBox(
      height: MediaQuery.of(context).size.height,
      child: CarouselSlider.builder(
          slideBuilder: (index) {
            return Image.asset(
              'assets/images/marvel$index.jpg',
              fit: BoxFit.cover,
            );
          },
          unlimitedMode: true,
          slideTransform: const CubeTransform(),
          slideIndicator: CircularSlideIndicator(
              indicatorBackgroundColor: Colors.white,
              currentIndicatorColor: Colors.grey[800]!,
              indicatorBorderColor: Colors.grey[400]!,
              padding: const EdgeInsets.only(bottom: 32)),
          itemCount: 6),
    ));
  }
}
