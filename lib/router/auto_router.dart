import 'package:auto_route/auto_route.dart';
import 'package:usecasetool/router/auto_router.gr.dart';


@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: '/', page: GetStartedRoute.page),
    AutoRoute(path:'/home',page: HomeRoute.page,
          children:[
            AutoRoute(
              path: 'use-case-point',
              page: UseCasePointRoute.page,
              children: [
                AutoRoute(path:'',page:UUCPRoute.page),
                AutoRoute(path:'UAW',page:UAWRoute.page),
                AutoRoute(path:'TCF',page: TCFRoute.page),
                AutoRoute(path:'ECF',page: ECFRoute.page),
                AutoRoute(path: 'UCP', page: UCPRoute.page),
              ]),
            AutoRoute(path:'Import',page: ImportRoute.page),
            AutoRoute(path:'History',page: UseCasePointHistoryRoute.page),
            AutoRoute(path:'LogIn',page: LogInRoute.page),
            AutoRoute(path:'ForgotPassWord',page: ForgotPasswordRoute.page),
            AutoRoute(path:'Register',page: RegisterRoute.page),
            AutoRoute(path:'Profile',page: ProfileRoute.page),
        ]),
  ];
}


