import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum _Key {
  successCount,
}

class LocalStorageService extends GetxService {
  SharedPreferences? _sharedPreferences;
  Future<LocalStorageService> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  int? get successCount {
    final rawJson = _sharedPreferences?.getInt(_Key.successCount.toString());
    if (rawJson == null) {
      return null;
    }

    return rawJson;
  }

  set successCount(int? value) {
    if (value != null) {
      _sharedPreferences?.setInt(_Key.successCount.toString(), value);
    } else {
      _sharedPreferences?.remove(_Key.successCount.toString());
    }
  }
}
