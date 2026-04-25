import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/MyText.dart';
import 'package:portfolio/widgets/SectionNineWid.dart';

class WidgetNine extends StatelessWidget {
  WidgetNine({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: utils.GlobalWidth(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            text: "Let's connect",
            color: colors.green,
            fontSize: utils.MobileMode(context) ? 28 : 42,
          ),
          SizedBox(height: 20,),
          utils.desktopMode(context)?Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              secNine[0],
              secNine[1],
              secNine[2],
              secNine[3],
            ],
          ):utils.TabletMode(context)?Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 16,
            children: [
              secNine[0],
              secNine[1],
              secNine[2],
              secNine[3],
            ],
          ):Column(
            spacing: 10,
            children: [
              secNine[0],
              secNine[1],
              secNine[2],
              secNine[3],
            ],
          ),
        ],
      ),
    );
  }
  List<Widget> secNine = [
    Sectionninewid(iconData: FontAwesomeIcons.envelope, title: "Email", desc: utils.email,onTap: () {},),
    Sectionninewid(iconData: FontAwesomeIcons.github, title: "Github", desc: utils.githubUsername,onTap: () {},),
    Sectionninewid(iconData: FontAwesomeIcons.linkedin, title: "Linkedin", desc: utils.displayName,onTap: () {},),
    Sectionninewid(iconData: FontAwesomeIcons.phone, title: "Phone", desc: utils.phone,onTap: () {},),
  ];
}
