import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class HeaderButton extends StatelessWidget {
  String text;
  VoidCallback onPressed;
  bool? isSelected=false;
  HeaderButton({super.key, required this.text,required this.onPressed,this.isSelected});

  @override
  Widget build(BuildContext context) {
    TextStyle desktopStyle = TextStyle(color: isSelected!=null&&isSelected==true?Colors.white:Colors.grey, fontSize: 18);
    TextStyle phoneStyle = TextStyle(color: isSelected!=null&&isSelected==true?utils.isDarkTheme?Colors.white:Colors.black:Colors.grey, fontSize: 20,fontWeight: FontWeight.bold);
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          overlayColor:
              WidgetStateColor.resolveWith((states) => Colors.transparent),
        ),
        child: Text(
          text,
          style: utils.desktopMode(context)?desktopStyle:phoneStyle,
        ),
      ),
    );
  }
}
