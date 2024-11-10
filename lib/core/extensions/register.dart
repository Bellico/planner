import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';

extension CoreDependenciesExtensions on GetIt {
  void registerCoreDependencies() {
    registerLazySingleton(() => FirebaseFirestore.instance);
  }
}
