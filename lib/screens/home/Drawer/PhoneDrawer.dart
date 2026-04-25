import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:portfolio/controllers/Home/HeaderController.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/CircularSocialBtn.dart';
import 'package:portfolio/widgets/HeaderButton.dart';
import 'package:portfolio/widgets/MyText.dart';

class PhoneDrawer extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey;
  PhoneDrawer({super.key,required this.scaffoldKey});
  HeaderController headerController = Get.find();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),

        ///Cross icon
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                scaffoldKey.currentState?.closeDrawer();
              },
              icon: FaIcon(
                FontAwesomeIcons.xmark,
                color: colors.green,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Obx(
              () => Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HeaderButton(
                  text: "Home",
                  onPressed: () {
                    headerController.setSelectedIndex(0);
                    scaffoldKey.currentState?.closeDrawer();
                  },
                  isSelected: headerController.selectedIndex.value == 0,
                ),
                SizedBox(
                  height: 5,
                ),
                HeaderButton(
                  text: "Services",
                  onPressed: () {
                    headerController.setSelectedIndex(1);
                    scaffoldKey.currentState?.closeDrawer();
                  },
                  isSelected: headerController.selectedIndex.value == 1,
                ),
                SizedBox(
                  height: 5,
                ),
                HeaderButton(
                  text: "Projects",
                  onPressed: () {
                    headerController.setSelectedIndex(2);
                    scaffoldKey.currentState?.closeDrawer();
                  },
                  isSelected: headerController.selectedIndex.value == 2,
                ),
                SizedBox(
                  height: 5,
                ),
                HeaderButton(
                  text: "Pricing",
                  onPressed: () {
                    headerController.setSelectedIndex(3);
                    scaffoldKey.currentState?.closeDrawer();
                  },
                  isSelected: headerController.selectedIndex.value == 3,
                ),
                SizedBox(
                  height: 5,
                ),
                HeaderButton(
                  text: "Contact",
                  onPressed: () {
                    headerController.setSelectedIndex(4);
                    scaffoldKey.currentState?.closeDrawer();
                  },
                  isSelected: headerController.selectedIndex.value == 4,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 50),
        MyText(
          text: "Contact Links",
          fontSize: 18,
        ),
        SizedBox(height: 10),
        Row(
          children: [
            CircularSocialBtn(
                callback: () {}, FontAweasomeIcon: FontAwesomeIcons.phone),
            CircularSocialBtn(
                callback: () {}, FontAweasomeIcon: FontAwesomeIcons.envelope),
            CircularSocialBtn(
                callback: () {}, FontAweasomeIcon: FontAwesomeIcons.globe),
          ],
        ),
        SizedBox(height: 20),
        MyText(
          text: "Social Links",
          fontSize: 18,
        ),
        SizedBox(height: 10),
        Row(
          children: [
            CircularSocialBtn(
                callback: () {}, FontAweasomeIcon: FontAwesomeIcons.whatsapp),
            CircularSocialBtn(
                callback: () {}, FontAweasomeIcon: FontAwesomeIcons.instagram),
            CircularSocialBtn(
                callback: () {}, FontAweasomeIcon: FontAwesomeIcons.github),
            CircularSocialBtn(
                callback: () {}, FontAweasomeIcon: FontAwesomeIcons.linkedin),
          ],
        ),
        SizedBox(height: 10),
      ],
    ),
    );
  }
}