import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/GlowingContainer.dart';
import 'package:portfolio/widgets/MyText.dart';
import 'package:portfolio/widgets/SectionFourWid.dart';

class WidgetFour extends StatelessWidget {
  WidgetFour({super.key});

  @override
  Widget build(BuildContext context) {
    final servicesH = utils.widgetFourMinHeight(context, listData.length);
    return GlowingContainer(
      conatinerW: utils.GlobalWidth(context),
      conatinerH: servicesH,
      isAnimate: false,
      child: SizedBox(
        width: utils.GlobalWidth(context),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            MyText(
              text: 'Services',
              color: colors.green,
              letterSpacing: 1.5,
              fontSize: 18,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                    text: "Programming solutions ",
                    style: TextStyle(
                        color: colors.getTextColor(),
                        fontSize: utils.MobileMode(context) ? 28 : 35)),
                TextSpan(
                    text: utils.MobileMode(context)
                        ? "customized to meet your requirements"
                        : "customized \n to meet your requirements",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: utils.MobileMode(context) ? 28 : 35))
              ]),
            ),
            SizedBox(
              height: 20,
            ),

            ///Main Cards Data
            utils.desktopMode(context)
                ? Column(
                    ///if desktop
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [sec4Wid[0], sec4Wid[1], sec4Wid[2]],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [sec4Wid[3], sec4Wid[4], sec4Wid[5]],
                      ),
                    ],
                  )
                : utils.getScreenWidth(context) > 750
                    ? Column(
                        ///if tablet
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              sec4Wid[0],
                              sec4Wid[1],
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              sec4Wid[2],
                              sec4Wid[3],
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              sec4Wid[4],
                              sec4Wid[5],
                            ],
                          ),
                        ],
                      )
                    : Column(
                        spacing: 20,

                        ///if mboile
                        children: [
                          sec4Wid[0],
                          sec4Wid[1],
                          sec4Wid[2],
                          sec4Wid[3],
                          sec4Wid[4],
                          sec4Wid[5],
                        ],
                      ),
            SizedBox(
              height: 40,
            ),
            MyText(
              text: "Excited to take on new projects and collaborate.",
              isBold: false,
              letterSpacing: 2,
              alignCenter: true,
            )
          ],
        ),
      ),
    );
  }

  static List<Map<String, dynamic>> listData = [
    {
      "icon": FontAwesomeIcons.code,
      "title": "Web Development",
      "desc":
          "Building responsive and modern websites using cutting-edge technologies."
    },
    {
      "icon": FontAwesomeIcons.mobileScreen,
      "title": "Mobile Application Development",
      "desc":
          "Creating user-centered designs that provide intuitive and engaging user experiences."
    },
    {
      "icon": FontAwesomeIcons.wordpress,
      "title": "WordPress Development",
      "desc":
          "Designing and developing tailor-made WordPress themes and plugins for unique functionality and branding."
    },
    {
      "icon": FontAwesomeIcons.appStore,
      "title": "Uploading Play and Appstore",
      "desc":
          "Ensuring the app is fully functional, optimized for performance, and meets Apple’s UI/UX guidelines."
    },
    {
      "icon": FontAwesomeIcons.facebook,
      "title": "Facebook Ads",
      "desc":
          "Reach the right audience based on demographics, interests, behaviors, and location."
    },
    {
      "icon": FontAwesomeIcons.laravel,
      "title": "Laravel and cPanel/WHM",
      "desc":
          "Hosting a Laravel application using cPanel/WHM simplifies the deployment and management process."
    },
  ];
  List<Widget> sec4Wid = List.generate(listData.length, (index) {
    return SectionFourWid(
      icon: listData[index]['icon'],
      title: listData[index]['title'],
      desc: listData[index]['desc'],
      privateNum: index + 1,
    );
  });
}
