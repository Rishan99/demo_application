import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).maybePop();
      },
      icon: const Icon(
        Icons.arrow_back_ios_new,
        color: Color(0xff313B49),
      ),
    );
  }
}
