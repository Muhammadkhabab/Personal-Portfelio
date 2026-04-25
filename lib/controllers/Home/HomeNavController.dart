import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Drives scroll-to-section for the single-page home layout (header + drawer).
class HomeNavController extends GetxController {
  final ScrollController scrollController = ScrollController();

  /// Keys: Home, Services, Projects, Pricing, Contact (same order as header).
  final List<GlobalKey> sectionKeys =
      List<GlobalKey>.generate(5, (_) => GlobalKey());

  void scrollToSection(int index) {
    if (index < 0 || index >= sectionKeys.length) return;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final ctx = sectionKeys[index].currentContext;
      if (ctx == null || !scrollController.hasClients) return;
      Scrollable.ensureVisible(
        ctx,
        duration: Duration(milliseconds: index == 0 ? 550 : 650),
        curve: Curves.easeOutCubic,
        alignment: index == 0 ? 0 : 0.02,
      );
    });
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}
