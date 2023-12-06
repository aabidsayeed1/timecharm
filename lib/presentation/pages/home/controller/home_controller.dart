import 'dart:math';
import 'package:get/get.dart';
import 'package:time_charm/app/services/local_storage.dart';

class HomeController extends GetxController {
  var randomNumber = 0.obs;
  var isMatched = false.obs;
  var noOfSuccesCount = 0.obs;
  final store = Get.find<LocalStorageService>();
  var lastTimeClicked = 0;
  @override
  void onInit() {
//  load data from local Storage
    loadDatafromLocalStorage();
    super.onInit();
  }

  // Match time with random Number from 1 to 59
  void matchTimeWithRandomNumber() {
    randomNumber(Random.secure().nextInt(59));
    if (randomNumber.value == DateTime.now().second) {
      noOfSuccesCount++;
      isMatched.value = true;
      savetolocalStorage();
    } else {
      isMatched.value = false;
    }
  }

  void onRandomTap() {
    // just wait for 1 sec until you see success message
    final now = DateTime.now().millisecondsSinceEpoch;
    if (isMatched.value) {
      if (now - lastTimeClicked < 1000) {
        return;
      }
      matchTimeWithRandomNumber();
    } else {
      lastTimeClicked = now;
      matchTimeWithRandomNumber();
    }
  }

  /// load first time from local storage
  void loadDatafromLocalStorage() {
    if (store.successCount != null) {
      noOfSuccesCount(store.successCount);
    }
  }

  /// save data to local storage
  void savetolocalStorage() {
    store.successCount = noOfSuccesCount.value;
  }
}
