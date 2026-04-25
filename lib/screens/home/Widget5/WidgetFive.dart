import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/Home/Widget5/WidgetFiveController.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/GlowingContainer.dart';
import 'package:portfolio/widgets/MyText.dart';

class WidgetFive extends StatelessWidget {
  WidgetFive({super.key});

  WidgetFiveController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    List<Widget>  myWid =[
      ///2 Buttons
      Expanded(
        flex: 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 30,
            ),
            InkWell(
              onHover: (value) {
                controller.Hover(value, 2);
              },
              onTap: () {},
              child: Obx(
                    () => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: colors.getBorderColor(), width: 0.3),
                    color: controller.isHover.value &&
                        controller.privateKey.value == 2
                        ? colors.lowlightGreen
                        : colors.getConatinerColor(),
                  ),
                  width: math.min(300, utils.GlobalWidth(context) - 40),
                  height: 80,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/images/fiverr.png',
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyText(
                            text: "Fiverr",
                            fontSize: 22,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          MyText(
                            text: "Explore Me on Fiverr!",
                            isBold: false,
                            color: Colors.grey,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onHover: (value) {
                controller.Hover(value, 1);
              },
              onTap: () {},
              child: Obx(
                    () => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: colors.getBorderColor(), width: 0.3),
                    color: controller.isHover.value &&
                        controller.privateKey.value == 1
                        ? colors.lowlightGreen
                        : colors.getConatinerColor(),
                  ),
                  width: math.min(300, utils.GlobalWidth(context) - 40),
                  height: 80,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/images/upwork.png',
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyText(
                            text: "Upwork",
                            fontSize: 22,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          MyText(
                            text: "Explore Me on Upwork!",
                            isBold: false,
                            color: Colors.grey,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(width: 20,),
      ///Text Data
      Expanded(
        flex: 7,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(
                text: "Full Stack Web and App Developer",
                color: colors.green,
                fontSize: 22,
                letterSpacing: 2,
              ),
              SizedBox(
                height: 20,
              ),
              MyText(
                text:
                "I build high-performance mobile and web apps using Flutter and Java making sure they run smoothly for millions of users. I also use smart technology to improve search and user experience. Working with different teams, I help bring new features to life while keeping everything fast and efficient!",
                isBold: false,
                fontSize: utils.MobileMode(context)?15:18,
                letterSpacing: 1.5,
              ),
              SizedBox(
                height: 30,
              ),
              utils.MobileMode(context)?Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      tagsConatiner[0],
                      tagsConatiner[1],
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      tagsConatiner[2],
                      tagsConatiner[3],
                    ],
                  )
                ],
              ):Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  tagsConatiner[0],
                  tagsConatiner[1],
                  tagsConatiner[2],
                  tagsConatiner[3],
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                ],
              )
            ],
          ),
        ),
      ),
    ];
    final outerH = utils.desktopMode(context)
        ? 520.0
        : math.min(980.0, utils.getScreenHeight(context) * 0.92);
    final headerBlock =
        utils.desktopMode(context) ? 220.0 : 260.0;
    final innerBodyH =
        math.max(240.0, outerH - headerBlock);
    return GlowingContainer(
      isAnimate: false,
      conatinerW: utils.GlobalWidth(context),
      conatinerH: outerH,
      child: SizedBox(
        height: outerH,
        width: utils.GlobalWidth(context),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            MyText(
              text: 'Experience',
              color: colors.green,
              letterSpacing: 1.5,
              fontSize: 18,
            ),
            SizedBox(
              height: 15,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "+6 ",
                      style: TextStyle(
                          color: colors.getTextColor(),
                          letterSpacing: 2,
                          fontSize: utils.MobileMode(context) ? 25 : 35,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "years of ",
                      style: TextStyle(
                          color: Colors.grey,
                          letterSpacing: 2,
                          fontSize: utils.MobileMode(context) ? 25 : 35,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "dedication and passion ",
                      style: TextStyle(
                          color: colors.getTextColor(),
                          letterSpacing: 2,
                          fontSize: utils.MobileMode(context) ? 25 : 35,
                          fontWeight: FontWeight.bold)),
                  utils.desktopMode(context)
                      ? TextSpan(text: "\n")
                      : TextSpan(text: ""),
                  TextSpan(
                      text: "for mastering programming techniques ",
                      style: TextStyle(
                          color: Colors.grey,
                          letterSpacing: 2,
                          fontSize: utils.MobileMode(context) ? 25 : 35,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(
              height: innerBodyH,
              child: utils.desktopMode(context)?Row(
                children: [
                  myWid[0],
                  myWid[1],
                  myWid[2],
                ],
              ):Column(
                children: [
                  myWid[0],
                  myWid[1],
                  myWid[2],
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  List<Widget> tagsConatiner = [
    Container(
      alignment: Alignment.center,
      height: 45,
      width: 80,
      decoration: BoxDecoration(
        border: Border.all(
            color: colors.getBorderColor(), width: 0.3),
        color: colors.getConatinerColor(),
      ),
      child: MyText(text: "Flutter"),
    ),
    Container(
      alignment: Alignment.center,
      height: 45,
      width: 80,
      decoration: BoxDecoration(
        border: Border.all(
            color: colors.getBorderColor(), width: 0.3),
        color: colors.getConatinerColor(),
      ),
      child: MyText(text: "Java"),
    ),
    Container(
      alignment: Alignment.center,
      height: 45,
      width: 80,
      decoration: BoxDecoration(
        border: Border.all(
            color: colors.getBorderColor(), width: 0.3),
        color: colors.getConatinerColor(),
      ),
      child: MyText(text: "Kotlin"),
    ),
    Container(
      alignment: Alignment.center,
      height: 45,
      width: 80,
      decoration: BoxDecoration(
        border: Border.all(
            color: colors.getBorderColor(), width: 0.3),
        color: colors.getConatinerColor(),
      ),
      child: MyText(text: "Firebase"),
    ),
  ];
}
