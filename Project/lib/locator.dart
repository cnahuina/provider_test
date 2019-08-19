import 'package:get_it/get_it.dart';

import 'core/viewmodels/login_models.dart';

GetIt locator = GetIt.I;

void setupLocator(){
  locator.registerLazySingleton(()=> LoginModel());
}