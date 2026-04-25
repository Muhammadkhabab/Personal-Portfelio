
import 'package:get/get.dart';

class WidFourController extends GetxController{

  RxBool isHover = false.obs;
  RxInt privateKey = 0.obs;
  void Hover(bool val,int peKey){
    isHover.value = val;
    privateKey.value = peKey;
  }
}