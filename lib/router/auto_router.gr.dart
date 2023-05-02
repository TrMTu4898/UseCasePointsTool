// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:usecasetool/screens/%20use_case_point/uaw_screen.dart' as _i1;
import 'package:usecasetool/screens/%20use_case_point/use_case_point_screen.dart'
    as _i2;
import 'package:usecasetool/screens/%20use_case_point/uucp_screen.dart' as _i3;
import 'package:usecasetool/screens/home/get_start.dart' as _i4;
import 'package:usecasetool/screens/home/home_screen.dart' as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    UAWRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.UAWScreen(),
      );
    },
    UseCasePointRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.UseCasePointScreen(),
      );
    },
    UUCPRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.UUCPScreen(),
      );
    },
    GetStartedRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.GetStartedScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.UAWScreen]
class UAWRoute extends _i6.PageRouteInfo<void> {
  const UAWRoute({List<_i6.PageRouteInfo>? children})
      : super(
          UAWRoute.name,
          initialChildren: children,
        );

  static const String name = 'UAWRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.UseCasePointScreen]
class UseCasePointRoute extends _i6.PageRouteInfo<void> {
  const UseCasePointRoute({List<_i6.PageRouteInfo>? children})
      : super(
          UseCasePointRoute.name,
          initialChildren: children,
        );

  static const String name = 'UseCasePointRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.UUCPScreen]
class UUCPRoute extends _i6.PageRouteInfo<void> {
  const UUCPRoute({List<_i6.PageRouteInfo>? children})
      : super(
          UUCPRoute.name,
          initialChildren: children,
        );

  static const String name = 'UUCPRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.GetStartedScreen]
class GetStartedRoute extends _i6.PageRouteInfo<void> {
  const GetStartedRoute({List<_i6.PageRouteInfo>? children})
      : super(
          GetStartedRoute.name,
          initialChildren: children,
        );

  static const String name = 'GetStartedRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
