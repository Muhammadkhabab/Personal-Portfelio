
import 'package:get/get.dart';
import 'Home/HeaderController.dart';
import 'Home/HomeNavController.dart';
import 'Home/Widget1/WidgetOneController.dart';
import 'Home/Widget4/WidFourController.dart';
import 'Home/Widget5/WidgetFiveController.dart';
import 'Home/Widget6/WidgetSixController.dart';
import 'Home/Widget7/WidgetSevenController.dart';
import 'Home/Widget8/WidgetEightController.dart';

class BindingsDI extends Bindings{
  @override
  void dependencies() {
    Get.put(HomeNavController());
    Get.put(HeaderController());
    Get.put(WidFourController());
    Get.put(WidgetFiveController());
    Get.put(WidgetSixController());
    Get.put(WidgetSevenController());
    Get.put(WidgetEightController());
    Get.put(WidgetOneController());
  }

}