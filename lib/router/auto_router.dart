import 'package:auto_route/auto_route.dart';
import 'package:usecasetool/router/auto_router.gr.dart';


@AutoRouterConfig(generateForDir: ['lib/screen'])
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: '/', page: HomeViewRoute.page,
      children: [
         AutoRoute(page: ProfileRoute.page),
         AutoRoute(page: HomeRoute.page),
      ]
    ),
    // AutoRoute(page: HomeRoute.page),
   
    AutoRoute(page: UseCasePointRoute.page,
        children: [
          AutoRoute(page: UUCPRoute.page),
          AutoRoute(page: UAWRoute.page),
        ],
    ),

  ];
}
