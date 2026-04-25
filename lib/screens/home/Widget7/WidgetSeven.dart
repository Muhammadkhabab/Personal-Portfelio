import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/Home/Widget7/WidgetSevenController.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/GlowingContainer.dart';
import 'package:portfolio/widgets/MyText.dart';
import 'package:portfolio/widgets/SectionSevenWid.dart';
import 'package:portfolio/widgets/SkillIconMarqueeRows.dart';

class WidgetSeven extends StatelessWidget {
  WidgetSeven({super.key});
  WidgetSevenController widgetSevenController=Get.find();
  @override
  Widget build(BuildContext context) {
    final blockH = utils.skillsAreaHeight(context);
    final outerH = blockH + 320;
    return GlowingContainer(
      conatinerW: utils.GlobalWidth(context),
      conatinerH: outerH,
      isAnimate: false,
      child: SizedBox(
        width: utils.GlobalWidth(context),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: MyText(
                text: 'Skills',
                color: colors.green,
                letterSpacing: 1.5,
                fontSize: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: MyText(
                text: 'My Skills',
                letterSpacing: 2,
                fontSize: 28,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: blockH,
              child: utils.desktopMode(context)?Row(
                children: [
                  getWid7(widgetSevenController,context)[0],
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: VerticalDivider(color: Colors.grey,),
                  ),
                  getWid7(widgetSevenController,context)[1],
                ],
              ):Column(
                children: [
                  getWid7(widgetSevenController,context)[0],
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Divider(color: Colors.grey,height: 1,),
                  ),
                  getWid7(widgetSevenController,context)[1],
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  List<Widget> getWid7(WidgetSevenController widgetSevenController,BuildContext context){
    List<Widget> skillswid = [
      Expanded(
        child: SkillIconMarqueeRows(
          scrollController1: widgetSevenController.scrollController,
          scrollController2: widgetSevenController.scrollController2,
        ),
      ),
      Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: utils.desktopMode(context)?40:0),
          child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Sectionsevenwid(title: "Front-End",detail: "HTML, CSS, Flutter, XML",),
                      Sectionsevenwid(title: "Back-End",detail: "Laravel, PHP, Firebase",),
                      Sectionsevenwid(title: "Databases",detail: "MySQL, Firebase, MongoDB",),
                      Sectionsevenwid(title: "Tools & Platforms",detail: "Git, WHM Panel, Cpanel",),
                      Sectionsevenwid(title: "Others",detail: "Wordpress, Playconsole, Appstore",),
                    ],
                  ),
                ),
        ),
      )
    ];
    return skillswid;
  }
}
