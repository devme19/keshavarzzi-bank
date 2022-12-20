import 'package:flutter/material.dart';

import '../common_image_view.dart';
class AppbarImage extends StatelessWidget {
  AppbarImage(
      {required this.height,
        required this.width,
        this.imagePath,
        this.svgPath,
        this.margin,
        this.onTap});

  double height;

  double width;

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(onTap != null) {
          onTap!();
        }
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CommonImageView(
          svgPath: svgPath,
          imagePath: imagePath,
          height: height,
          width: width,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
