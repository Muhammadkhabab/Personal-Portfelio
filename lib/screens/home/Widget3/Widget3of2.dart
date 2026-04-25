import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/GithubStatusItem.dart';
import 'package:portfolio/widgets/GlowingContainer.dart';
import 'package:portfolio/widgets/MyText.dart';

class Widget3of2 extends StatelessWidget {
  const Widget3of2({super.key});

  @override
  Widget build(BuildContext context) {
    final h = utils.MobileMode(context)
        ? 320.0
        : utils.TabletMode(context)
            ? 360.0
            : 400.0;
    return GlowingContainer(
        conatinerW: utils.GlobalWidth(context),
        conatinerH: h,
        isAnimate: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  FaIcon(FontAwesomeIcons.circleDot, color: colors.green),
                  SizedBox(
                    width: 10,
                  ),
                  MyText(
                    text: "GitHub Status",
                    color: colors.green,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GithubStatusItem(
                date: "15 Dec",
                title: "Youtube-clone-project-Flutter-android-ios-web",
              ),
              GithubStatusItem(
                date: "15 Dec",
                title: "Youtube-clone-project-Flutter-android-ios-web",
              ),
              GithubStatusItem(
                date: "15 Dec",
                title: "Youtube-clone-project-Flutter-android-ios-web",
              ),
              GithubStatusItem(
                date: "15 Dec",
                title: "Youtube-clone-project-Flutter-android-ios-web",
              ),
              GithubStatusItem(
                date: "15 Dec",
                title: "Youtube-clone-project-Flutter-android-ios-web",
              ),
            ],
          ),
        ),
    );
  }
}