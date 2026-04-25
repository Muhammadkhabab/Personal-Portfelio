import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/GlowingContainer.dart';
import 'package:portfolio/widgets/SectionTwoWid.dart';

class WidgetTwo extends StatelessWidget {
  const WidgetTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return GlowingContainer(
      isAnimate: false,
      conatinerW: utils.GlobalWidth(context),
      conatinerH: utils.desktopMode(context)
          ? 250
          : (utils.TabletMode(context) ? 380 : 720),
      child: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
                "assets/images/static-bg.png",
                fit: BoxFit.fill,
              )),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: utils.desktopMode(context)
                ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SectionTwoWid(
                  icon: FontAwesomeIcons.crown,
                  num: "5",
                  text: "Years Experience",
                ),
                SectionTwoWid(
                  icon: FontAwesomeIcons.desktop,
                  num: "100",
                  text: "Projects Completed",
                ),
                SectionTwoWid(
                  icon: FontAwesomeIcons.heart,
                  num: "350",
                  text: "Satisfied Clients",
                ),
                SectionTwoWid(
                  icon: FontAwesomeIcons.award,
                  num: "18",
                  text: "Award Winner",
                ),
              ],
            )
                : utils.TabletMode(context)
                ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SectionTwoWid(
                      icon: FontAwesomeIcons.crown,
                      num: "5",
                      text: "Years Experience",
                    ),
                    SectionTwoWid(
                      icon: FontAwesomeIcons.desktop,
                      num: "100",
                      text: "Projects Completed",
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SectionTwoWid(
                      icon: FontAwesomeIcons.heart,
                      num: "350",
                      text: "Satisfied Clients",
                    ),
                    SectionTwoWid(
                      icon: FontAwesomeIcons.award,
                      num: "18",
                      text: "Award Winner",
                    ),
                  ],
                )
              ],
            )
                : Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SectionTwoWid(
                  icon: FontAwesomeIcons.crown,
                  num: "5",
                  text: "Years Experience",
                ),
                SectionTwoWid(
                  icon: FontAwesomeIcons.desktop,
                  num: "100",
                  text: "Projects Completed",
                ),
                SectionTwoWid(
                  icon: FontAwesomeIcons.heart,
                  num: "350",
                  text: "Satisfied Clients",
                ),
                SectionTwoWid(
                  icon: FontAwesomeIcons.award,
                  num: "18",
                  text: "Award Winner",
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
