import 'package:get/get.dart';

import '../controller/creat_controller.dart';
import '../controller/edit_controller.dart';
import '../controller/home_controller.dart';



class ControllersBinding implements Bindings {

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<HomeController>(HomeController());
    Get.put<EditController>(EditController());
    Get.put<CreateController>(CreateController());
  }
}