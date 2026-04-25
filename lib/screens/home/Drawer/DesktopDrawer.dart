import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/MyText.dart';

class DesktopDrawer extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey;
  DesktopDrawer({super.key,required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),

        ///Cross icon
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                scaffoldKey.currentState?.closeDrawer();
              },
              icon: FaIcon(
                FontAwesomeIcons.xmark,
                color: colors.green,
              ),
            ),
          ],
        ),

        ///Get in touch
        Center(
          child: MyText(
            text: "Get in touch",
            fontSize: 40,
            isBold: true,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(
            height: 2,
            color: colors.green,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        MyText(
          text:
          "I'm always excited to take on new projects and collaborate with innovative minds.",
          fontSize: 17,
          letterSpacing: 3,
          color: colors.getSubtitleColor(),
        ),

        ///Phone ETC
        SizedBox(
          height: 30,
        ),
        MyText(
          text: "Phone",
          fontSize: 18,
        ),
        SizedBox(
          height: 10,
        ),
        MyText(
          text: utils.phone,
          fontSize: 18,
          color: colors.green,
          letterSpacing: 2,
          isSelectable: true,
        ),
        SizedBox(
          height: 20,
        ),
        MyText(
          text: "Email",
          fontSize: 18,
        ),
        SizedBox(
          height: 10,
        ),
        MyText(
          text: utils.email,
          fontSize: 18,
          color: colors.green,
          letterSpacing: 2,
          isSelectable: true,
        ),
        SizedBox(
          height: 20,
        ),
        MyText(
          text: "GitHub",
          fontSize: 18,
        ),
        SizedBox(
          height: 10,
        ),
        MyText(
          text: utils.githubUrl,
          fontSize: 18,
          color: colors.green,
          letterSpacing: 2,
          isSelectable: true,
        ),
        SizedBox(
          height: 20,
        ),
        MyText(
          text: "LinkedIn",
          fontSize: 18,
        ),
        SizedBox(
          height: 10,
        ),
        MyText(
          text: utils.linkedinUrl,
          fontSize: 18,
          color: colors.green,
          letterSpacing: 2,
          isSelectable: true,
        ),
        SizedBox(
          height: 40,
        ),
      ],
    ),
    );
  }
}