import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/GlowingContainer.dart';
import 'package:portfolio/widgets/MyText.dart';

class Widget3of1 extends StatelessWidget {
  const Widget3of1({super.key});

  @override
  Widget build(BuildContext context) {
    final double h = utils.desktopMode(context)
        ? 400.0
        : utils.TabletMode(context)
            ? 520.0
            : math.min(760.0, utils.getScreenHeight(context) * 0.88);
    return GlowingContainer(
          conatinerW: utils.GlobalWidth(context),
          conatinerH: h,
          isAnimate: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                    text: "Our Valued Customers",
                    color: colors.green,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 20),
                child: MyText(
                  text:
                  "Over 300+ clients worldwide have placed their trust in us.",
                  fontSize: utils.MobileMode(context) ? 30 : 40,
                ),
              ),

              ///Fiverr pro and coantact
              utils.MobileMode(context)
                  ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  GlowingContainer(
                    conatinerH: 150,
                    conatinerW: 250,
                    isAnimate: true,
                    glowLength: 50,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                            "assets/images/fiverr_choice.jpg")),
                  ),
                  // Container(
                  //   alignment: Alignment.center,
                  //   width: 200,
                  //   height: 200,
                  //   child: Stack(
                  //     alignment: Alignment.center,
                  //     children: [
                  //       CircleAvatar(
                  //         backgroundImage: AssetImage(
                  //             "assets/logos/sm-logo.png"),
                  //         radius: 20,
                  //       ),
                  //       CustomPaint(
                  //         painter:
                  //             CircleOutline(radius: 40),
                  //       ),
                  //       CustomPaint(
                  //         painter:
                  //             CircleOutline(radius: 60),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.envelope,
                              color: colors.getIconColor(),
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: MyText(
                                  text: utils.email,
                                  color: colors.green,
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            FaIcon(FontAwesomeIcons.whatsapp,
                                color: colors.getIconColor(), size: 20),
                            SizedBox(
                              width: 5,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: MyText(
                                    text: utils.phone,
                                    color: colors.green))
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            FaIcon(FontAwesomeIcons.github,
                                color: colors.getIconColor(), size: 20),
                            SizedBox(
                              width: 5,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: MyText(
                                    text: utils.githubUsername,
                                    color: colors.green))
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            FaIcon(FontAwesomeIcons.linkedin,
                                color: colors.getIconColor(), size: 20),
                            SizedBox(
                              width: 5,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: MyText(
                                    text: utils.displayName, color: colors.green))
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  )
                ],
              )
                  : Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  GlowingContainer(
                    conatinerH:
                    utils.getScreenWidth(context) > 1400 ? 150 : 120,
                    conatinerW:
                    utils.getScreenWidth(context) > 1400 ? 250 : 200,
                    isAnimate: true,
                    glowLength: 50,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                            "assets/images/fiverr_choice.jpg")),
                  ),
                  // Container(
                  //   alignment: Alignment.center,
                  //   width: 200,
                  //   height: 200,
                  //   child: Stack(
                  //     alignment: Alignment.center,
                  //     children: [
                  //       CircleAvatar(
                  //         backgroundImage: AssetImage(
                  //             "assets/logos/sm-logo.png"),
                  //         radius: 20,
                  //       ),
                  //       CustomPaint(
                  //         painter:
                  //             CircleOutline(radius: 40),
                  //       ),
                  //       CustomPaint(
                  //         painter:
                  //             CircleOutline(radius: 60),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.envelope,
                            color: colors.getIconColor(),
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: MyText(
                                text: utils.email,
                                color: colors.green,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          FaIcon(FontAwesomeIcons.whatsapp,
                              color: colors.getIconColor(), size: 20),
                          SizedBox(
                            width: 5,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: MyText(
                                  text: utils.phone,
                                  color: colors.green))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          FaIcon(FontAwesomeIcons.github,
                              color: colors.getIconColor(), size: 20),
                          SizedBox(
                            width: 5,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: MyText(
                                  text: utils.githubUsername, color: colors.green))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          FaIcon(FontAwesomeIcons.linkedin,
                              color: colors.getIconColor(), size: 20),
                          SizedBox(
                            width: 5,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: MyText(
                                  text: utils.displayName, color: colors.green))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                ],
              ),
            ],
          ),
        );
  }
}
