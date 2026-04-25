import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/utils.dart';
import 'MyText.dart';

class SectionTwoWid extends StatelessWidget {
  IconData icon;
  String num,text;
  SectionTwoWid({super.key,required this.icon,required this.num,required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: utils.MobileMode(context)?CrossAxisAlignment.center:CrossAxisAlignment.start,
        children: [
          FaIcon(icon,size: 20,color: colors.green,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(text: num,fontSize: 50,),
              SizedBox(width: 30,),
              FaIcon(FontAwesomeIcons.plus,color: Colors.grey,size: 30,),
            ],
          ),
          MyText(text: text,fontSize: 20,),
        ],
      ),
    );
  }
}
