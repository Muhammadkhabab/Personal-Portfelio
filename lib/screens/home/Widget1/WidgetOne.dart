import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/Home/Widget1/WidgetOneController.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/GlowingContainer.dart';
import 'package:portfolio/widgets/MyText.dart';
import 'package:portfolio/widgets/SkillIconMarqueeRows.dart';

class WidgetOne extends StatelessWidget {
  WidgetOne({super.key});

  WidgetOneController widgetOneController = Get.find();

  @override
  Widget build(BuildContext context) {
    final heroH = utils.desktopMode(context)
        ? 700.0
        : utils.TabletMode(context)
            ? 700.0
            : math.min(900.0, utils.getScreenHeight(context) * 0.92);
    return GlowingContainer(
      isAnimate: true,
      conatinerH: heroH,
      speed: Duration(seconds: 7),
      glowLength: 150,
      conatinerW: utils.GlobalWidth(context),
      child: utils.desktopMode(context)
          ? Row(
              children: [
                WidOneWidgets(context)[0],
                WidOneWidgets(context)[1],
              ],
            )
          : Column(
              children: [
                WidOneWidgets(context)[0],
                WidOneWidgets(context)[1],
              ],
            ),
    );
  }

  List<Widget> WidOneWidgets(BuildContext context) {
    List<Widget> widone = [
      Expanded(
        flex: utils.desktopMode(context) ? 5 : 4,
        child: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final side = utils.heroImageSize(context, 480);
              return Image.asset(
                "assets/images/khubii.png",
                height: side,
                width: side,
                fit: BoxFit.contain,
              );
            },
          ),
        ),
      ),
      Expanded(
        flex: utils.desktopMode(context) ? 5 : 6,
        child: SingleChildScrollView(
          physics: utils.desktopMode(context)
              ? const NeverScrollableScrollPhysics()
              : const BouncingScrollPhysics(),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: utils.desktopMode(context)
              ? MainAxisAlignment.spaceEvenly
              : MainAxisAlignment.start,
          children: [
            Obx(
              () => RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "<span>",
                      style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  TextSpan(
                      text: " Hey, I am ${utils.displayName} ",
                      style: TextStyle(
                          color: colors.getTextColor(), fontSize: 18)),
                  widgetOneController.isBlink.value
                      ? TextSpan(
                          text: "| ",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 18,
                              fontWeight: FontWeight.bold))
                      : TextSpan(
                          text: "  ",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "</span>",
                      style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                ]),
              ),
            ),
            Obx(
              () => RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Senior Full Stack\n",
                      style: TextStyle(
                          color: colors.getTextColor(),
                          fontWeight: FontWeight.bold,
                          fontSize: utils.desktopMode(context) ? 45 : 28,
                          letterSpacing: 2)),
                  TextSpan(
                      text: "{Web & App}\n",
                      style: TextStyle(
                          color: colors.green,
                          fontSize: utils.desktopMode(context) ? 45 : 30,
                          letterSpacing: 2)),
                  TextSpan(
                      text: "developer",
                      style: TextStyle(
                          color: colors.getTextColor(),
                          fontWeight: FontWeight.bold,
                          fontSize: utils.desktopMode(context) ? 45 : 30,
                          letterSpacing: 2)),
                  widgetOneController.isBlink.value
                      ? TextSpan(
                          text: "_ ",
                          style: TextStyle(
                              color: colors.getTextColor(),
                              fontSize: utils.desktopMode(context) ? 45 : 30,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold))
                      : TextSpan(
                          text: "  ",
                          style: TextStyle(
                              color: colors.getTextColor(),
                              fontSize: utils.desktopMode(context) ? 45 : 30,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold)),
                ]),
              ),
            ),
            SizedBox(
              width: utils.desktopMode(context)
                  ? utils.getScreenWidth(context) / 2
                  : utils.getScreenWidth(context),
              child: RichText(
                text: TextSpan(
                    style: TextStyle(letterSpacing: 2, fontSize: utils.desktopMode(context)?18:16),
                    children: [
                      TextSpan(
                          text: "<p>",
                          style: TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      TextSpan(
                          text:
                              " With expertise in cutting-edge technologies such as ",
                          style: TextStyle(
                            color: colors.getTextColor(),
                          )),
                      TextSpan(
                          text: " Java",
                          style: TextStyle(
                              color: Colors.pink, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: ", \n",
                          style: TextStyle(
                            color: colors.getTextColor(),
                          )),
                      TextSpan(
                          text: " Flutter",
                          style: TextStyle(
                              color: Colors.pink, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: ", ",
                          style: TextStyle(color: colors.getTextColor())),
                      TextSpan(
                          text: " Android Studio",
                          style: TextStyle(
                              color: Colors.pink, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: ", ",
                          style: TextStyle(
                            color: colors.getTextColor(),
                          )),
                      TextSpan(
                          text: " and ",
                          style: TextStyle(
                            color: colors.getTextColor(),
                          )),
                      TextSpan(
                          text: " Firebase",
                          style: TextStyle(
                              color: Colors.pink, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "... ",
                          style: TextStyle(
                            color: colors.getTextColor(),
                          )),
                      TextSpan(
                          text:
                              "I deliver mobile and web solutions that are both innovative and robust.",
                          style: TextStyle(
                            color: colors.getTextColor(),
                          )),
                      TextSpan(
                        text: "</p>",
                        style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkillIconMarqueeRows(
                  scrollController1: widgetOneController.scrollController,
                  scrollController2: widgetOneController.scrollController2,
                  tileSize: 70,
                  horizontalPadding: 16,
                  rowSpacing: 10,
                ),
                const SizedBox(height: 6),
                MyText(
                  text: " ...and more",
                  isBold: false,
                  letterSpacing: 2,
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              onHover: (value) {},
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.download,
                    color: colors.green,
                    size: 18,
                  ),
                  MyText(
                    text: " Download CV",
                    isBold: false,
                    letterSpacing: 2,
                    fontSize: 16,
                  )
                ],
              ),
            ),
          ],
        ),
        ),
      )
    ];
    return widone;
  }
}
