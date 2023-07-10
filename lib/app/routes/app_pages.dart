import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/howto/bindings/howto_binding.dart';
import '../modules/howto/views/howto_view.dart';
import '../modules/lesson/bindings/lesson_binding.dart';
import '../modules/lesson/views/lesson_view.dart';
import '../modules/lobby/bindings/lobby_binding.dart';
import '../modules/lobby/views/lobby_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/tutorial1/bindings/tutorial1_binding.dart';
import '../modules/tutorial1/views/tutorial1_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LESSON,
      page: () => LessonView(),
      binding: LessonBinding(),
    ),
    GetPage(
      name: _Paths.LOBBY,
      page: () => LobbyView(),
      binding: LobbyBinding(),
    ),
    GetPage(
      name: _Paths.TUTORIAL1,
      page: () => Tutorial1View(),
      binding: Tutorial1Binding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.HOWTO,
      page: () => const HowtoView(),
      binding: HowtoBinding(),
    ),
  ];
}
