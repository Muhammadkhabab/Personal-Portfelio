import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class colors{
  /// Brand (from headshot gradient): primary = center teal, secondary = outer deep teal
  static const Color primary = Color(0xFF277180);
  static const Color secondary = Color(0xFF02493C);

  static const Color bgDark = Color(0xFF0E1C1A);
  static const Color bgLight = Color(0xFFEEF5F4);
  static const Color headerLight = Color(0xFF277180);
  static const Color headerDark = Color(0xFF02493C);
  static const Color bgContainerDark = Color(0xFF152E2A);
  static const Color bgContainerLight = Color(0xFFFFFFFF);
  static const Color menuSideDark = Color(0xFF0F2622);
  static const Color menuSideLight = Color(0xFF1E4D57);
  static const Color textDark = Color(0xFFE8E8E8);
  static const Color textLight = Color(0xFF1F1F24);
  /// Accent / highlights (same as primary for existing `colors.green` usages)
  static const Color green = primary;
  static const Color subtitleOnBlack = Color(0xFFCCCCCC);
  static const Color subtitleOnWhite = Color(0xFF444444);
  static const Color borderOnWhite = primary;
  static const Color borderOnblack = Color(0xFFFFFFFF);
  static const Color lowlightGreen = Color(0xFF1A3D36);

  ///Functions
  static Color getBgColor() => utils.isDarkTheme?bgDark:bgLight;
  static Color getheaderColor() => utils.isDarkTheme?headerDark:headerLight;
  static Color getConatinerColor() => utils.isDarkTheme?bgContainerDark:bgContainerLight;
  static Color getMenuSideColor() => utils.isDarkTheme?menuSideDark:menuSideLight;
  static Color getTextColor() => utils.isDarkTheme?textDark:textLight;
  static Color getIconColor() => utils.isDarkTheme?textDark:textLight;
  static Color getSubtitleColor() => utils.isDarkTheme?subtitleOnBlack:subtitleOnWhite;
  static Color getBorderColor() => utils.isDarkTheme?borderOnblack:borderOnWhite;


}
