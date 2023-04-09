import 'package:get/get.dart';

class OpacityController extends GetxController {
  RxDouble opacity = .5.obs;

  setOpacity(double value) {
    opacity.value = value;
  }
}
