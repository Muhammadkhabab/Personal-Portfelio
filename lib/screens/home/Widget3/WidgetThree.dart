import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/Widget3/Widget3of1.dart';
import 'package:portfolio/screens/home/Widget3/Widget3of2.dart';
import 'package:portfolio/utils/utils.dart';

class WidgetThree extends StatelessWidget {
  const WidgetThree({super.key});

  @override
  Widget build(BuildContext context) {
    if (utils.desktopMode(context)) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 3, child: Widget3of1()),
          SizedBox(width: 15),
          Expanded(flex: 2, child: Widget3of2()),
        ],
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Widget3of1(),
        SizedBox(height: 15),
        Widget3of2(),
      ],
    );
  }
}
