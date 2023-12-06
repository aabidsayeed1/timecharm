import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_charm/app/services/local_storage.dart';
import 'package:time_charm/app/util/dependency.dart';

import 'presentation/app.dart';

void main() async {
  DependencyCreator.init();
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const App());
}

initServices() async {
  print('starting services ...');

  await Get.putAsync(() => LocalStorageService().init());

  print('All services started...');
}
