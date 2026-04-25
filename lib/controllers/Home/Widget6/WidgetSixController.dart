
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/dataBase.dart';

class WidgetSixController extends GetxController {
  PageController _pageController = PageController();
  Timer? _timer;
  int itemcCount=0;
  PageController pageControllerSetup({required pageController}){
    _pageController = pageController;
    _timer?.cancel();
    restartTimer();
    return _pageController;
  }
  void forwardPage(){
    restartTimer();
    if(itemcCount>=dataBase.widget6Projects.length-1){
      _pageController.animateTo(
        duration: Duration(seconds: 1),
        0,
        curve: Curves.easeInOut,
      );
      itemcCount=0;
    }else{
      _pageController.nextPage(
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
      itemcCount++;
    }
  }
  void previousPage(){
    restartTimer();
    if(itemcCount==0){
      // _pageController.animateTo(
      //   duration: Duration(seconds: 1),
      //   dataBase.widget6Projects.length-1,
      //   curve: Curves.easeInOut,
      // );
      // itemcCount=dataBase.widget6Projects.length-1;
    }else{
      _pageController.previousPage(
        duration: Duration(seconds: 1),
        curve: Curves.easeOut,
      );
      itemcCount--;
    }
  }
  void restartTimer() {
    _timer?.cancel();
    _timer =Timer.periodic(Duration(seconds: 5), (timer) {
        if(itemcCount>=dataBase.widget6Projects.length-1){
          _pageController.animateTo(
            duration: Duration(seconds: 1),
            0,
            curve: Curves.easeInOut,
          );
          itemcCount=0;
        }else{
          _pageController.nextPage(
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
          );
          itemcCount++;
        }

      },
      );
  }

  @override
  void onClose() {
    _timer?.cancel();
    _pageController.dispose();
    super.onClose();
  }
}