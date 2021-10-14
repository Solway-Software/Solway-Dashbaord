// ignore_for_file: file_names

import 'package:get_it/get_it.dart';
import 'package:solway_dashboard/providers/auth_provider.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerSingleton<AuthProvider>(AuthProvider());

// Alternatively you could write it if you don't like global variables
  // GetIt.I.registerSingleton<AppModel>(AppModel());
}
