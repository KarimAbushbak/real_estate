import 'package:auto_route/auto_route.dart';
import 'package:real_estate/routes/routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: OnBoardingRoute.page, ),
    AutoRoute(page: OptionRoute.page, ),
    AutoRoute(page: LoginRoute.page, ),
    AutoRoute(page: RegisterRoute.page, ),
  ];
}