import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:usecasetool/router/auto_router.gr.dart';


@AutoRouterConfig(generateForDir: ['lib/screen'])
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: '/', page: GetStartedRoute.page,
      children:[
        AutoRoute(page: HomeRoute.page,
          children:[
            AutoRoute(page: UseCasePointRoute.page,
              children: [
                AutoRoute(page:UUCPRoute.page),
                AutoRoute(page:UAWRoute.page),
                AutoRoute(page: TCFRoute.page),
                AutoRoute(page: ECFRoute.page),
              ],
            ),
            AutoRoute(page: ImportRoute.page),
            AutoRoute(page: UseCasePointHistoryRoute.page),
          ],
        ),
            AutoRoute(page: LogInRoute.page),
            AutoRoute(page: ForgotPasswordRoute.page),
            AutoRoute(page: RegisterRoute.page),
            AutoRoute(page: ProfileRoute.page),
      ],
    ),
  ];
}
