import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/colors.dart';

import 'MyText.dart';

class GithubStatusItem extends StatelessWidget {
  final String date,title;
  const GithubStatusItem({super.key,required this.date,required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 10,
          ),
          FaIcon(FontAwesomeIcons.calendarPlus,color: colors.getIconColor(),size: 20,),
          SizedBox(
            width: 10,
          ),
          MyText(text: date,color: Colors.grey,),
          SizedBox(
            width: 10,
          ),
          Expanded(child: MyText(text: title,fontSize: 18,isEllipse: true,))
        ],
      ),
    );
  }
}
