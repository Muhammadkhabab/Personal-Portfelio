
import 'package:get/get.dart';
import 'package:portfolio/controllers/Home/HomeNavController.dart';

class HeaderController extends GetxController{
  RxBool isHoveronWhatsapp = false.obs;
  RxBool isHoveronInsta = false.obs;
  RxBool isHoveronGithub = false.obs;
  RxBool isHoveronLinkedin = false.obs;
  RxInt selectedIndex = 0.obs;

  void HoveronWhatsapp(bool value){
    isHoveronWhatsapp.value = value;
  }
  void HoveronInsta(bool value){
    isHoveronInsta.value = value;
  }
  void HoveronGithub(bool value){
    isHoveronGithub.value = value;
  }
  void HoveronLinkedin(bool value){
    isHoveronLinkedin.value = value;
  }
  void setSelectedIndex(int index){
    selectedIndex.value = index;
    if (Get.isRegistered<HomeNavController>()) {
      Get.find<HomeNavController>().scrollToSection(index);
    }
  }

}