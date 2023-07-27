import 'package:flutter/material.dart';

class SeperatorBox extends StatelessWidget {
  final double? height;
  const SeperatorBox({
    Key? key,
    this.height = 15,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
