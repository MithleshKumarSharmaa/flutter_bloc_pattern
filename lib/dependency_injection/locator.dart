import 'package:newsapp/data/repositories/user_repository.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => UserRepository());
}
