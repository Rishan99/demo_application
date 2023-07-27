
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgPictureWidget extends StatelessWidget {
  final String imagePath;
  final Function? onTap;
  final double? height;
  final double? width;
  const SvgPictureWidget({
    Key? key,
    required this.imagePath,
    this.onTap,
     this.height,
     this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imagePainter = SvgPicture.asset(
      imagePath,
      height: height,
      width: width,
    );
    if (onTap == null) {
      return imagePainter;
    }
    return IconButton(
        onPressed: () {
          onTap!();
        },
        icon: imagePainter);
  }
}
