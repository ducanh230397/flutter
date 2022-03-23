import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ImageSlideWidget extends StatefulWidget {

  ImageSlideWidget() {
  } 
  @override
  State<ImageSlideWidget> createState() => _ImageSlideWidgetState();
}

class _ImageSlideWidgetState extends State<ImageSlideWidget> {
  @override
  Widget build(BuildContext context) { 
    return slide();
  }  

  Widget slide() { 
    return ImageSlideshow(
          width: double.infinity,
          height: 220,
          initialPage: 0,
          indicatorColor: Colors.blue,
          indicatorBackgroundColor: Colors.grey,
          onPageChanged: (value) {
            debugPrint('Page changed: $value');
          },
          autoPlayInterval: 3000,
          isLoop: true,
          children: [
            Image.asset(
              'assets/image1.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/image2.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/image3.jpg',
              fit: BoxFit.cover,
            ),
          ],
        );
  }

}