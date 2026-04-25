
import 'dart:math' as math;
import 'package:flutter/cupertino.dart';

class utils{

  static const String appName = "MK-PORTFOLIO-MAIN";
  static const String displayName = "Muhammad Khabab";
  static const String githubUsername = "Muhammadkhabab";
  static const String phone = "+92-3119969859";
  static const String email = "muhammad.khabab.official@gmail.com";
  static const String githubUrl = "https://github.com/Muhammadkhabab";
  static const String linkedinUrl = "https://www.linkedin.com/in/muhammad-khabab";
  /// Primary public link (GitHub profile)
  static const String website = githubUrl;
  static bool isDarkTheme = true;

  /// Max content width on very large displays (readability)
  static const double contentMaxWidth = 1280;

  ///Functions
  static double getScreenHeight(BuildContext context) => MediaQuery.sizeOf(context).height;
  static double getScreenWidth(BuildContext context) => MediaQuery.sizeOf(context).width;
  static bool desktopMode(BuildContext context) => getScreenWidth(context) > 1150;
  static bool TabletMode(BuildContext context) => getScreenWidth(context) > 668;
  static bool MobileMode(BuildContext context) => getScreenWidth(context) < 668;
  static bool compactWidth(BuildContext context) => getScreenWidth(context) < 400;

  /// Usable content width with safe-area and a sensible cap on ultra-wide screens.
  static double GlobalWidth(BuildContext context) {
    final mq = MediaQuery.of(context);
    final w = mq.size.width;
    final horizontalInset = mq.padding.left + mq.padding.right;
    final usable = (w - horizontalInset) * 0.92;
    return math.min(math.max(usable, 260), contentMaxWidth);
  }

  static double heroImageSize(BuildContext context, double maxSide) {
    final cap = GlobalWidth(context) * (desktopMode(context) ? 0.42 : 0.88);
    return math.min(maxSide, cap);
  }

  static double sectionFourCardWidth(BuildContext context) {
    final gw = GlobalWidth(context);
    if (desktopMode(context)) return math.min(300, gw / 3.2);
    if (TabletMode(context)) return math.min(300, (gw - 48) / 2.1);
    return math.min(320, gw - 24);
  }

  static double testimonialsListHeight(BuildContext context) {
    final h = getScreenHeight(context);
    if (desktopMode(context)) return math.max(440, math.min(520, h * 0.52));
    if (TabletMode(context)) return math.max(400, math.min(480, h * 0.48));
    return math.max(380, math.min(460, h * 0.46));
  }

  static double skillsAreaHeight(BuildContext context) {
    final h = getScreenHeight(context);
    if (desktopMode(context)) {
      return math.max(460, math.min(560, h * 0.52));
    }
    return math.max(520, math.min(620, h * 0.58));
  }

  /// Minimum height for the Services (Widget 4) glowing box from card geometry.
  static double widgetFourMinHeight(BuildContext context, int numCards) {
    final cw = sectionFourCardWidth(context);
    final double ch = math.max(260.0, math.min(360.0, cw * 1.12));
    final cardBlock = ch + 40;
    const headerFooter = 360.0;
    if (desktopMode(context)) {
      return 2 * cardBlock + 100 + headerFooter;
    }
    if (getScreenWidth(context) > 750) {
      return 3 * cardBlock + 80 + headerFooter;
    }
    return numCards * (cardBlock + 28) + headerFooter;
  }

}