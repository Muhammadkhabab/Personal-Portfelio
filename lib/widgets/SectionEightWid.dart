import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/Home/Widget8/WidgetEightController.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/utils/colors.dart';

import 'MyText.dart';

class SectionEightWid extends StatelessWidget {
  String clientName,companyName,testimonial,imgPath;
  int privateNum;
  SectionEightWid({super.key,required this.clientName,required this.companyName,required this.testimonial,required this.imgPath,required this.privateNum});
  WidgetEightController widgetEightController = Get.find();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      splashColor: Colors.transparent,
      onTap: () {
        widgetEightController.isHover.value = !widgetEightController.isHover.value;
        widgetEightController.privateNum.value = privateNum;
      },
      onHover: (value) {
        widgetEightController.isHover.value = value;
        widgetEightController.privateNum.value = privateNum;
      },
      child: Obx(
            () => Container(
          width: math.min(
              utils.MobileMode(context) ? 330.0 : 350.0,
              utils.GlobalWidth(context) * 0.92),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border(
                top: BorderSide(width: 2,color: widgetEightController.isHover.value&&widgetEightController.privateNum.value==privateNum?colors.green:Colors.grey),
                right: BorderSide(width: 2,color: widgetEightController.isHover.value&&widgetEightController.privateNum.value==privateNum?colors.green:Colors.grey),
                left: BorderSide(width: 2,color: widgetEightController.isHover.value&&widgetEightController.privateNum.value==privateNum?colors.green:Colors.grey),
              )
          ),
          padding: EdgeInsets.all(utils.MobileMode(context) ? 14 : 20),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: constraints.maxWidth,
                    maxWidth: constraints.maxWidth,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 5,
                            children: [
                              Icon(FontAwesomeIcons.solidStar,color: colors.green,size: 15,),
                              Icon(FontAwesomeIcons.solidStar,color: colors.green,size: 15,),
                              Icon(FontAwesomeIcons.solidStar,color: colors.green,size: 15,),
                              Icon(FontAwesomeIcons.solidStar,color: colors.green,size: 15,),
                              Icon(FontAwesomeIcons.solidStar,color: colors.green,size: 15,),
                            ],
                          ),
                          Icon(FontAwesomeIcons.quoteRight,color: widgetEightController.isHover.value&&widgetEightController.privateNum.value==privateNum?colors.green:Colors.grey,size: 36,)
                        ],
                      ),
                      SizedBox(height: 8,),
                      MyText(
                        text: testimonial,
                        isBold: false,
                        fontSize: utils.MobileMode(context) ? 14 : 16,
                      ),
                      SizedBox(height: 16,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(imgPath,height: 56,width: 56,),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyText(text: clientName,fontSize: 18,),
                                MyText(text: companyName,fontSize: 14,isBold: false,),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 12,),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
