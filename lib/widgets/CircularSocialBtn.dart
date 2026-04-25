import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/colors.dart';

class CircularSocialBtn extends StatelessWidget {
  VoidCallback callback;
  IconData FontAweasomeIcon;
  CircularSocialBtn(
      {super.key, required this.callback, required this.FontAweasomeIcon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: callback,
      icon: CircleAvatar(
        backgroundColor: colors.green,
        child: FaIcon(
          FontAweasomeIcon,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
