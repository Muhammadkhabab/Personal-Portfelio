import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/colors.dart';

import 'MyText.dart';

class Sectionninewid extends StatelessWidget {
  IconData iconData;
  String title,desc;
  VoidCallback onTap;
  Sectionninewid({super.key,required this.iconData,required this.title,required this.desc,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5)
              ),
              width: 50,
              height: 50,
              child: FaIcon(
                iconData,
                color: colors.green,
              ),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(text: title,color: Colors.grey,isBold: false,),
                MyText(text: desc,color: colors.getTextColor()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
