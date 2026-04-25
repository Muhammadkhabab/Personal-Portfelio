import 'package:flutter/material.dart';
import 'package:portfolio/widgets/GlowingContainer.dart';

/// Two stacked horizontal icon rows (same layout as the My Skills section).
class SkillIconMarqueeRows extends StatelessWidget {
  const SkillIconMarqueeRows({
    super.key,
    required this.scrollController1,
    required this.scrollController2,
    this.tileSize = 80,
    this.horizontalPadding = 20,
    this.rowSpacing = 12,
    this.assetPath = 'assets/images/fiverr.png',
    this.itemCount = 100,
    this.reverseSecondRow = true,
  });

  final ScrollController scrollController1;
  final ScrollController scrollController2;
  final double tileSize;
  final double horizontalPadding;
  final double rowSpacing;
  final String assetPath;
  final int itemCount;
  final bool reverseSecondRow;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: tileSize,
          child: ListView.builder(
            controller: scrollController1,
            scrollDirection: Axis.horizontal,
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: GlowingContainer(
                  isAnimate: false,
                  conatinerW: tileSize,
                  conatinerH: tileSize,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(assetPath),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: rowSpacing),
        SizedBox(
          height: tileSize,
          child: ListView.builder(
            controller: scrollController2,
            reverse: reverseSecondRow,
            scrollDirection: Axis.horizontal,
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: GlowingContainer(
                  isAnimate: false,
                  conatinerW: tileSize,
                  conatinerH: tileSize,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(assetPath),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
