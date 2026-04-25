import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/Home/Widget6/WidgetSixController.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/dataBase.dart';
// import 'dart:html' as html;
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/CircleOutline.dart';
import 'package:portfolio/widgets/GlowingContainer.dart';
import 'package:portfolio/widgets/MyText.dart';

class WidgetSix extends StatelessWidget {
  WidgetSix({super.key});
  final PageController _pageController = PageController();
  WidgetSixController widgetSixController = Get.find();
  @override
  Widget build(BuildContext context) {
    final stackH = utils.MobileMode(context)
        ? math.min(
            780.0, math.max(620.0, utils.getScreenHeight(context) * 0.64))
        : 520.0;
    final outerH = utils.MobileMode(context) ? stackH + 140 : stackH + 145;
    return GlowingContainer(
      conatinerW: utils.GlobalWidth(context),
      conatinerH: outerH,
      isAnimate: false,
      child: SizedBox(
        width: utils.GlobalWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: MyText(
                text: 'Projects',
                color: colors.green,
                letterSpacing: 1.5,
                fontSize: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: MyText(
                text: 'My Recent Works',
                letterSpacing: 2,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 12),
            Stack(
              children: [
                ///Cards
                SizedBox(
                  height: stackH,
                  child: PageView.builder(
                    controller: widgetSixController.pageControllerSetup(
                        pageController: _pageController),
                    itemBuilder: (context, index) {
                      final project = dataBase.widget6Projects[index];
                      return SixWidCard(
                        imgPath: project["imgPath"],
                        title: project["title"],
                        desc: project["desc"],
                        category: project["category"],
                        client: project["client"],
                        startdate: project["startdate"],
                        githubLink: project["githubLink"],
                        liveWebLink: project["liveWebLink"],
                        isLocked: project["isLocked"],
                      );
                    },
                    itemCount: dataBase.widget6Projects.length,
                  ),
                ),

                ///Forward Backward Buttons
                Positioned(
                  right: utils.MobileMode(context) ? 20 : 80,
                  bottom: utils.MobileMode(context) ? 10 : 20,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: colors.lowlightGreen,
                        radius: 22,
                        child: IconButton(
                          onPressed: () {
                            widgetSixController.previousPage();
                          },
                          icon: Icon(
                            FontAwesomeIcons.arrowLeft,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                          backgroundColor: colors.lowlightGreen,
                          radius: 22,
                          child: IconButton(
                              onPressed: () {
                                widgetSixController.forwardPage();
                              },
                              icon: Icon(
                                FontAwesomeIcons.arrowRight,
                                color: Colors.white,
                                size: 18,
                              ))),
                    ],
                  ),
                )
              ],
            ),
            utils.MobileMode(context) ? SizedBox() : SizedBox(height: 25)
          ],
        ),
      ),
    );
  }
}

///This is Responsive Card declaration only main details in SixWidFun() Function
class SixWidCard extends StatelessWidget {
  String imgPath, title, desc, category, client, startdate;
  bool? isLocked;
  String githubLink, liveWebLink;

  SixWidCard(
      {super.key,
      required this.imgPath,
      required this.title,
      required this.desc,
      required this.category,
      required this.client,
      required this.startdate,
      this.isLocked,
      required this.githubLink,
      required this.liveWebLink});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: utils.MobileMode(context) ? 00 : 40.0),
      child: GlowingContainer(
        conatinerW: utils.GlobalWidth(context),
        conatinerH: utils.MobileMode(context)
            ? math.min(
                780.0, math.max(620.0, utils.getScreenHeight(context) * 0.64))
            : 520,
        isAnimate: false,
        child: utils.MobileMode(context)
            ? Column(
                children: [
                  SixWidFun(
                      context: context,
                      imgPath: imgPath,
                      title: title,
                      desc: desc,
                      category: category,
                      client: client,
                      startDate: startdate,
                      isLocked:
                          isLocked != null && isLocked == true ? true : false,
                      onGithubTap: () => openInNewTab(githubLink),
                      onWebLiveTap: () => openInNewTab(liveWebLink))[0],
                  SixWidFun(
                      context: context,
                      imgPath: imgPath,
                      title: title,
                      desc: desc,
                      category: category,
                      client: client,
                      startDate: startdate,
                      isLocked:
                          isLocked != null && isLocked == true ? true : false,
                      onGithubTap: () => openInNewTab(githubLink),
                      onWebLiveTap: () => openInNewTab(liveWebLink))[1],
                ],
              )
            : Row(
                children: [
                  SixWidFun(
                      context: context,
                      imgPath: imgPath,
                      title: title,
                      desc: desc,
                      category: category,
                      client: client,
                      startDate: startdate,
                      isLocked:
                          isLocked != null && isLocked == true ? true : false,
                      onGithubTap: () => openInNewTab(githubLink),
                      onWebLiveTap: () => openInNewTab(liveWebLink))[0],
                  SixWidFun(
                      context: context,
                      imgPath: imgPath,
                      title: title,
                      desc: desc,
                      category: category,
                      client: client,
                      startDate: startdate,
                      isLocked:
                          isLocked != null && isLocked == true ? true : false,
                      onGithubTap: () => openInNewTab(githubLink),
                      onWebLiveTap: () => openInNewTab(liveWebLink))[1],
                ],
              ),
      ),
    );
  }
}

void openInNewTab(String url) {
  // html.window.open(url, '_blank');
}

///This is Function which return both Parts of cards
List<Widget> SixWidFun({
  required BuildContext context,
  required String imgPath,
  required String title,
  required String desc,
  required String client,
  required String startDate,
  required String category,
  required bool isLocked,
  required VoidCallback onGithubTap,
  required VoidCallback onWebLiveTap,
}) {
  List<Widget> widsixWids = [
    Expanded(
      flex: 4,
      child: Image.asset(
        imgPath,
      ),
    ),
    Expanded(
      flex: 6,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              MyText(
                text: title,
                fontSize: 28,
                color: colors.green,
                letterSpacing: 2,
              ),
              MyText(
                text: desc,
                fontSize: 16,
                isBold: false,
                maxLines: 3,
                isEllipse: true,
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: LayoutBuilder(
                  builder: (context, c) {
                    return SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(minWidth: c.maxWidth),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                CustomPaint(
                                  painter: CircleOutline(radius: 4),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                MyText(
                                  text: "Project Info",
                                  color: Colors.pinkAccent,
                                  letterSpacing: 2,
                                  isBold: false,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SizedBox(
                                  width: double.infinity,
                                  child:
                                      Divider(color: Colors.grey, height: 2)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    CustomPaint(
                                      painter: CircleOutline(radius: 4),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MyText(
                                      text: "Category",
                                      color: colors.getTextColor(),
                                      letterSpacing: 2,
                                      isBold: false,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: MyText(
                                    text: category,
                                    color: colors.getTextColor(),
                                    letterSpacing: 2,
                                    isBold: false,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SizedBox(
                                  width: double.infinity,
                                  child:
                                      Divider(color: Colors.grey, height: 2)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    CustomPaint(
                                      painter: CircleOutline(radius: 4),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MyText(
                                      text: "Client",
                                      color: colors.getTextColor(),
                                      letterSpacing: 2,
                                      isBold: false,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: MyText(
                                    text: client,
                                    color: colors.getTextColor(),
                                    letterSpacing: 2,
                                    isBold: false,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SizedBox(
                                  width: double.infinity,
                                  child:
                                      Divider(color: Colors.grey, height: 2)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    CustomPaint(
                                      painter: CircleOutline(radius: 4),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MyText(
                                      text: "Start Date",
                                      color: colors.getTextColor(),
                                      letterSpacing: 2,
                                      isBold: false,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: MyText(
                                    text: startDate,
                                    color: colors.getTextColor(),
                                    letterSpacing: 2,
                                    isBold: false,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SizedBox(
                                  width: double.infinity,
                                  child:
                                      Divider(color: Colors.grey, height: 2)),
                            ),

                            ///Github and Project Buttons
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                utils.desktopMode(context)
                                    ? InkWell(
                                        onTap: isLocked ? null : onGithubTap,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                width: 1, color: colors.green),
                                          ),
                                          width: 120,
                                          height: 50,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(
                                                isLocked
                                                    ? FontAwesomeIcons.lock
                                                    : FontAwesomeIcons.github,
                                                color: colors.green,
                                                size: 18,
                                              ),
                                              MyText(
                                                text: "Github",
                                                isBold: false,
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    : InkWell(
                                        onTap: isLocked ? null : onGithubTap,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  width: 1,
                                                  color: colors.green)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(
                                              isLocked
                                                  ? FontAwesomeIcons.lock
                                                  : FontAwesomeIcons.github,
                                              color: colors.green,
                                              size: 22,
                                            ),
                                          ),
                                        ),
                                      ),
                                SizedBox(
                                  width: 20,
                                ),
                                utils.desktopMode(context)
                                    ? InkWell(
                                        onTap: onWebLiveTap,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  width: 1,
                                                  color: colors.green)),
                                          width: 120,
                                          height: 50,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(
                                                FontAwesomeIcons
                                                    .arrowRightFromBracket,
                                                color: Colors.grey,
                                                size: 18,
                                              ),
                                              MyText(
                                                text: "Live Demo",
                                                isBold: false,
                                                fontSize: 16,
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    : InkWell(
                                        onTap: onWebLiveTap,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  width: 1,
                                                  color: colors.green)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(
                                              FontAwesomeIcons
                                                  .arrowRightFromBracket,
                                              color: colors.green,
                                              size: 22,
                                            ),
                                          ),
                                        ),
                                      ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    )
  ];
  return widsixWids;
}
