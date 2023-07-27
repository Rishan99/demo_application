import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String image;
  const UserAvatar({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      child: Image.asset(
        image,
        height: 40,
        width: 40,
        fit: BoxFit.fill,
      ),
    );
  }
}
