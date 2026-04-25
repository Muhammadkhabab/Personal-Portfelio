import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/Home/HeaderController.dart';
import 'package:portfolio/utils/colors.dart';

class SocialButton extends StatelessWidget {
  SocialButton({super.key});

  HeaderController headerController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ///Whatsapp
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            onTap: () {},
            onHover: (value) {
              headerController.HoveronWhatsapp(value);
            },
            child: Obx(
              () => FaIcon(
                FontAwesomeIcons.whatsapp,
                color: headerController.isHoveronWhatsapp.value
                    ? colors.green
                    : Colors.white,
              ),
            ),
          ),
        ),

        ///Insta
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            onTap: () {},
            onHover: (value) {
              headerController.HoveronInsta(value);
            },
            child: Obx(
              () => FaIcon(
                FontAwesomeIcons.instagram,
                color: headerController.isHoveronInsta.value
                    ? colors.green
                    : Colors.white,
              ),
            ),
          ),
        ),

        ///Github
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            onTap: () {},
            onHover: (value) {
              headerController.HoveronGithub(value);
            },
            child: Obx(
              () => FaIcon(
                FontAwesomeIcons.github,
                color: headerController.isHoveronGithub.value
                    ? colors.green
                    : Colors.white,
              ),
            ),
          ),
        ),

        ///Linkedin
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            onTap: () {},
            onHover: (value) {
              headerController.HoveronLinkedin(value);
            },
            child: Obx(
              () => FaIcon(
                FontAwesomeIcons.linkedin,
                color: headerController.isHoveronLinkedin.value
                    ? colors.green
                    : Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
