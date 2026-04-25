import 'package:flutter/material.dart';
import 'package:portfolio/widgets/MyText.dart';

class Sectionsevenwid extends StatelessWidget {
  String title, detail;

  Sectionsevenwid({super.key, required this.title, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 5.0, left: 20, bottom: 20),
          child: MyText(
            text: ".",
            fontSize: 30,
          ),
        ),
        MyText(text: title),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: MyText(
          text: detail,
          color: Colors.grey,
          isBold: false,
        ))
      ],
    );
  }
}
