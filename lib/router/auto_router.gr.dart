// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:usecasetool/screens/%20use_case_point/uaw_screen.dart' as _i1;
import 'package:usecasetool/screens/%20use_case_point/use_case_point_screen.dart'
    as _i2;
import 'package:usecasetool/screens/%20use_case_point/uucp_screen.dart' as _i3;
import 'package:usecasetool/screens/home/get_start.dart' as _i4;
import 'package:usecasetool/screens/home/home_screen.dart' as _i5;
import 'package:usecasetool/screens/HomeviewScreen.dart' as _i6;
import 'package:usecasetool/screens/Profile/Profile_Screen.dart' as _i7;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    UAWRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.UAWScreen(),
      );
    },
    UseCasePointRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.UseCasePointScreen(),
      );
    },
    UUCPRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.UUCPScreen(),
      );
    },
    GetStartedRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.GetStartedScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomeScreen(),
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeViewScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ProfileScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.UAWScreen]
class UAWRoute extends _i8.PageRouteInfo<void> {
  const UAWRoute({List<_i8.PageRouteInfo>? children})
      : super(
          UAWRoute.name,
          initialChildren: children,
        );

  static const String name = 'UAWRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.UseCasePointScreen]
class UseCasePointRoute extends _i8.PageRouteInfo<void> {
  const UseCasePointRoute({List<_i8.PageRouteInfo>? children})
      : super(
          UseCasePointRoute.name,
          initialChildren: children,
        );

  static const String name = 'UseCasePointRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.UUCPScreen]
class UUCPRoute extends _i8.PageRouteInfo<void> {
  const UUCPRoute({List<_i8.PageRouteInfo>? children})
      : super(
          UUCPRoute.name,
          initialChildren: children,
        );

  static const String name = 'UUCPRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.GetStartedScreen]
class GetStartedRoute extends _i8.PageRouteInfo<void> {
  const GetStartedRoute({List<_i8.PageRouteInfo>? children})
      : super(
          GetStartedRoute.name,
          initialChildren: children,
        );

  static const String name = 'GetStartedRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomeViewScreen]
class HomeViewRoute extends _i8.PageRouteInfo<void> {
  const HomeViewRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeViewRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ProfileScreen]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
