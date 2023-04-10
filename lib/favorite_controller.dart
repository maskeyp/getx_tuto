import 'package:get/get.dart';

class FavoriteController extends GetxController {
  RxList<String> fruitList = ['apple', 'Banana', 'Carrot', 'Orange'].obs;
  RxList tempFruitList = [].obs;

  addToFavorite(String value) {
    tempFruitList.add(value);
  }

  removeFromFavorite(String value) {
    tempFruitList.remove(value);
  }
}
