import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedLocation = 'Jakarta'.obs;
  var selectedCategory = 'House'.obs;

  void changeLocation(String newLocation) {
    selectedLocation.value = newLocation;
  }

  void changeCategory(String category) {
    selectedCategory.value = category;
  }
}
