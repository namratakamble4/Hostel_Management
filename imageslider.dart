

import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final List<String> images;

  const ImageSlider({
    Key? key,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Image.asset(
          images[index],
          fit: BoxFit.cover,
        );
      },
    );
  }
}
