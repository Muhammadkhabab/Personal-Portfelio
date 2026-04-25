import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/Home/HeaderController.dart';
import 'package:portfolio/controllers/Home/HomeNavController.dart';
import 'package:portfolio/screens/home/Drawer/DesktopDrawer.dart';
import 'package:portfolio/screens/home/Drawer/PhoneDrawer.dart';
import 'package:portfolio/screens/home/Header/header.dart';
import 'package:portfolio/screens/home/Widget1/widgetOne.dart';
import 'package:portfolio/screens/home/Widget2/WidgetTwo.dart';
import 'package:portfolio/screens/home/Widget3/WidgetThree.dart';
import 'package:portfolio/screens/home/Widget4/WidgetFour.dart';
import 'package:portfolio/screens/home/Widget5/WidgetFive.dart';
import 'package:portfolio/screens/home/Widget6/WidgetSix.dart';
import 'package:portfolio/screens/home/Widget7/WidgetSeven.dart';
import 'package:portfolio/screens/home/Widget8/WidgetEight.dart';
import 'package:portfolio/screens/home/Widget9/WidgetNine.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
HeaderController headerController = Get.find();

class _HomePageState extends State<HomePage> {
  late final HomeNavController _homeNav = Get.find<HomeNavController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: colors.getBgColor(),
        width: utils.TabletMode(context) ? 350 : 300,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: utils.desktopMode(context)
              ? DesktopDrawer(
                  scaffoldKey: _scaffoldKey,
                )
              : PhoneDrawer(scaffoldKey: _scaffoldKey),
        ),
      ),
      backgroundColor: colors.getBgColor(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          ///Background (covers full viewport; scales on resize)
          Positioned.fill(
            child: Image.asset(
              "assets/images/hero-bg-dark.png",
              fit: BoxFit.cover,
            ),
          ),

          ///Main Column
          SafeArea(
            child: WebSmoothScroll(
              controller: _homeNav.scrollController,
              child: SingleChildScrollView(
                controller: _homeNav.scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: utils.compactWidth(context)
                            ? 8
                            : utils.getScreenHeight(context) * 0.04),

                    ///Header
                    MyHeader(
                      switchTheme: () {
                        setState(() {
                          utils.isDarkTheme = !utils.isDarkTheme;
                        });
                      },
                      scaffoldKey: _scaffoldKey,
                    ),

                    ///Body Start
                    SizedBox(
                      width: utils.GlobalWidth(context),
                      child: Column(
                      children: [
                        ///Widget1 — Home
                        SizedBox(height: 15),
                        KeyedSubtree(
                          key: _homeNav.sectionKeys[0],
                          child: WidgetOne(),
                        ),

                        ///Widget 2
                        SizedBox(height: 15),
                        WidgetTwo(),

                        ///Widget 3
                        SizedBox(height: 15),
                        WidgetThree(),

                        ///Widget 4 — Services
                        SizedBox(height: 15),
                        KeyedSubtree(
                          key: _homeNav.sectionKeys[1],
                          child: WidgetFour(),
                        ),

                        ///Widget 5 — Pricing
                        SizedBox(height: 15),
                        KeyedSubtree(
                          key: _homeNav.sectionKeys[3],
                          child: WidgetFive(),
                        ),

                        ///Widget 6 — Projects
                        SizedBox(height: 15),
                        KeyedSubtree(
                          key: _homeNav.sectionKeys[2],
                          child: WidgetSix(),
                        ),

                        ///Widget 7
                        SizedBox(height: 15),
                        WidgetSeven(),

                        ///Widget 8
                        SizedBox(height: 15),
                        WidgetEight(),

                        ///Widget 9 — Contact
                        SizedBox(height: 50),
                        KeyedSubtree(
                          key: _homeNav.sectionKeys[4],
                          child: WidgetNine(),
                        ),

                        ///Bottom
                        SizedBox(
                          height: 100,
                        ),
                        Divider(
                          height: 1,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 15),
                        Image.asset(
                          "assets/logos/final-logo.png",
                          height: 40,
                        ),
                        SizedBox(height: 15),
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "© 2025 All Rights Reserved by ",
                                  style: TextStyle(
                                      color: colors.getTextColor(),
                                      letterSpacing: 2)),
                              TextSpan(
                                text: utils.displayName,
                                style: TextStyle(
                                    color: colors.green,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold),
                              ),
                            ])),
                        SizedBox(
                          height: 20,
                        ),

                        ///End
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }

}
