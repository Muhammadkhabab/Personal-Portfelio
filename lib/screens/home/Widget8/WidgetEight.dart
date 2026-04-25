import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/Home/Widget8/WidgetEightController.dart';
import 'package:portfolio/utils/dataBase.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/GlowingContainer.dart';
import 'package:portfolio/widgets/MyText.dart';
import 'package:portfolio/widgets/SectionEightWid.dart';

class WidgetEight extends StatelessWidget {
  WidgetEight({super.key});

  WidgetEightController widgetEightController = Get.find();

  @override
  Widget build(BuildContext context) {
    final listH = utils.testimonialsListHeight(context);
    final outerH = listH + (utils.MobileMode(context) ? 300 : 280);
    return GlowingContainer(
        conatinerW: utils.GlobalWidth(context),
        conatinerH: math.max(outerH, listH + 260),
        isAnimate: false,
        child: SizedBox(
          width: utils.GlobalWidth(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: utils.desktopMode(context) ? 30 : 5),
                child: MyText(
                  text: "Testimonials",
                  color: colors.green,
                  fontSize: utils.MobileMode(context) ? 32 : 50,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: utils.desktopMode(context) ? 30 : 5),
                child: MyText(
                  text:
                      "Hard work and daily learning help me better satisfy my customers!",
                  fontSize: 18,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: listH,
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(
                    dragDevices: {
                      PointerDeviceKind.mouse,
                      PointerDeviceKind.touch,
                    },
                    scrollbars: false,
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: utils.MobileMode(context) ? 5 : 30),
                        child: SectionEightWid(
                          clientName: dataBase.widget8Testimonials[index]
                              ["clientName"],
                          companyName: dataBase.widget8Testimonials[index]
                              ["companyName"],
                          testimonial: dataBase.widget8Testimonials[index]
                              ["Testimonial"],
                          imgPath: dataBase.widget8Testimonials[index]
                              ["imgPath"],
                          privateNum: index,
                        ),
                      );
                    },
                    itemCount: dataBase.widget8Testimonials.length,
                  ),
                ),
              ),
              SizedBox(
                height: utils.MobileMode(context) ? 15 : 60,
              ),
            ],
          ),
        ));
  }
}
