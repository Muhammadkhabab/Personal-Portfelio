import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';

class MyText extends StatelessWidget {
  String text;
  Color? color;
  double? fontSize;
  double? letterSpacing;
  bool? isBold;
  bool? isSelectable;
  bool? isEllipse;
  bool? alignCenter;
  int? maxLines;
  bool? isItalic;

  MyText(
      {super.key,
      required this.text,
      this.color,
      this.fontSize,
      this.letterSpacing,
      this.isSelectable,
      this.isEllipse,
      this.alignCenter,
      this.maxLines,
        this.isItalic,
      this.isBold = true});


  @override
  Widget build(BuildContext context) {
    ///text Style
    TextStyle style =  TextStyle(
      color: color ?? colors.getTextColor(),
      fontSize: fontSize ?? 16,
      fontWeight: (isBold != null && isBold == true)
          ? FontWeight.bold
          : FontWeight.normal,
      letterSpacing: letterSpacing ?? 0.5,
      fontStyle: isItalic!=null&&isItalic==true?FontStyle.italic:null,
      overflow: (isEllipse != null && isEllipse == true)?TextOverflow.ellipsis:TextOverflow.visible,
    );

    return isSelectable!=null&&isSelectable==true?
    SelectableText(
      text,
      style: style,
    ):
    Text(
      text,
      maxLines: maxLines,
      textAlign: alignCenter!=null&&alignCenter==true?TextAlign.center:TextAlign.start,
      style: style,
    );
  }
}
