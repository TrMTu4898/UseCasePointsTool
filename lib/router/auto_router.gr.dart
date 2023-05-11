// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:usecasetool/screens/%20use_case_point/uaw_screen.dart' as _i1;
import 'package:usecasetool/screens/%20use_case_point/use_case_point_screen.dart'
    as _i2;
import 'package:usecasetool/screens/%20use_case_point/uucp_screen.dart' as _i3;
import 'package:usecasetool/screens/authentication/login_screen.dart' as _i4;
import 'package:usecasetool/screens/History/history_screen.dart' as _i9;
import 'package:usecasetool/screens/home/get_start.dart' as _i5;
import 'package:usecasetool/screens/home/home_screen.dart' as _i6;
import 'package:usecasetool/screens/HomeviewScreen.dart' as _i7;
import 'package:usecasetool/screens/Profile/Profile_Screen.dart' as _i8;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    UAWRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.UAWScreen(),
      );
    },
    UseCasePointRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.UseCasePointScreen(),
      );
    },
    UUCPRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.UUCPScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginScreen(),
      );
    },
    GetStartedRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.GetStartedScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeScreen(),
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomeViewScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ProfileScreen(),
      );
    },
    HistoryRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.HistoryScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.UAWScreen]
class UAWRoute extends _i10.PageRouteInfo<void> {
  const UAWRoute({List<_i10.PageRouteInfo>? children})
      : super(
          UAWRoute.name,
          initialChildren: children,
        );

  static const String name = 'UAWRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.UseCasePointScreen]
class UseCasePointRoute extends _i10.PageRouteInfo<void> {
  const UseCasePointRoute({List<_i10.PageRouteInfo>? children})
      : super(
          UseCasePointRoute.name,
          initialChildren: children,
        );

  static const String name = 'UseCasePointRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.UUCPScreen]
class UUCPRoute extends _i10.PageRouteInfo<void> {
  const UUCPRoute({List<_i10.PageRouteInfo>? children})
      : super(
          UUCPRoute.name,
          initialChildren: children,
        );

  static const String name = 'UUCPRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute({List<_i10.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.GetStartedScreen]
class GetStartedRoute extends _i10.PageRouteInfo<void> {
  const GetStartedRoute({List<_i10.PageRouteInfo>? children})
      : super(
          GetStartedRoute.name,
          initialChildren: children,
        );

  static const String name = 'GetStartedRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomeScreen]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HomeViewScreen]
class HomeViewRoute extends _i10.PageRouteInfo<void> {
  const HomeViewRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeViewRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ProfileScreen]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.HistoryScreen]
class HistoryRoute extends _i10.PageRouteInfo<void> {
  const HistoryRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
