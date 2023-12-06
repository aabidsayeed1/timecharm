import 'dart:math';

class Utils {
  static String getImagePath(String name, {String format = 'png'}) {
    return 'assets/images/$name.$format';
  }
}

String generateFarmRandomID() {
  return 'TEMP${randdomInt(1000)}';
}

int randdomInt(int maximun, {int minimum = 0}) {
  return max(minimum, Random.secure().nextInt(maximun));
}
