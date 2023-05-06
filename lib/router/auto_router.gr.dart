// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:usecasetool/screens/%20use_case_point/ecf_page.dart' as _i9;
import 'package:usecasetool/screens/%20use_case_point/tcf_page.dart' as _i10;
import 'package:usecasetool/screens/%20use_case_point/uaw_page.dart' as _i11;
import 'package:usecasetool/screens/%20use_case_point/use_case_point_history_screen.dart'
    as _i1;
import 'package:usecasetool/screens/%20use_case_point/use_case_point_screen.dart'
    as _i2;
import 'package:usecasetool/screens/%20use_case_point/uucp_page.dart' as _i12;
import 'package:usecasetool/screens/authentication/forgot_password_screen.dart'
    as _i3;
import 'package:usecasetool/screens/authentication/login_screen.dart' as _i4;
import 'package:usecasetool/screens/authentication/register_screen.dart' as _i5;
import 'package:usecasetool/screens/home/get_start.dart' as _i6;
import 'package:usecasetool/screens/home/home_screen.dart' as _i7;
import 'package:usecasetool/screens/import/import_screen.dart' as _i13;
import 'package:usecasetool/screens/user/profile_screen.dart' as _i8;

abstract class $AppRouter extends _i14.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    UseCasePointHistoryRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.UseCasePointHistoryScreen(),
      );
    },
    UseCasePointRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.UseCasePointScreen(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ForgotPasswordPage(),
      );
    },
    LogInRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LogInPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.RegisterPage(),
      );
    },
    GetStartedRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.GetStartedScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomeScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ProfileScreen(),
      );
    },
    ECFRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.ECFPage(),
      );
    },
    TCFRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.TCFPage(),
      );
    },
    UAWRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.UAWScreen(),
      );
    },
    UUCPRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.UUCPPage(),
      );
    },
    ImportRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.ImportScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.UseCasePointHistoryScreen]
class UseCasePointHistoryRoute extends _i14.PageRouteInfo<void> {
  const UseCasePointHistoryRoute({List<_i14.PageRouteInfo>? children})
      : super(
          UseCasePointHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'UseCasePointHistoryRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i2.UseCasePointScreen]
class UseCasePointRoute extends _i14.PageRouteInfo<void> {
  const UseCasePointRoute({List<_i14.PageRouteInfo>? children})
      : super(
          UseCasePointRoute.name,
          initialChildren: children,
        );

  static const String name = 'UseCasePointRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ForgotPasswordPage]
class ForgotPasswordRoute extends _i14.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LogInPage]
class LogInRoute extends _i14.PageRouteInfo<void> {
  const LogInRoute({List<_i14.PageRouteInfo>? children})
      : super(
          LogInRoute.name,
          initialChildren: children,
        );

  static const String name = 'LogInRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i5.RegisterPage]
class RegisterRoute extends _i14.PageRouteInfo<void> {
  const RegisterRoute({List<_i14.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i6.GetStartedScreen]
class GetStartedRoute extends _i14.PageRouteInfo<void> {
  const GetStartedRoute({List<_i14.PageRouteInfo>? children})
      : super(
          GetStartedRoute.name,
          initialChildren: children,
        );

  static const String name = 'GetStartedRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HomeScreen]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute({List<_i14.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ProfileScreen]
class ProfileRoute extends _i14.PageRouteInfo<void> {
  const ProfileRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i9.ECFPage]
class ECFRoute extends _i14.PageRouteInfo<void> {
  const ECFRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ECFRoute.name,
          initialChildren: children,
        );

  static const String name = 'ECFRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i10.TCFPage]
class TCFRoute extends _i14.PageRouteInfo<void> {
  const TCFRoute({List<_i14.PageRouteInfo>? children})
      : super(
          TCFRoute.name,
          initialChildren: children,
        );

  static const String name = 'TCFRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i11.UAWScreen]
class UAWRoute extends _i14.PageRouteInfo<void> {
  const UAWRoute({List<_i14.PageRouteInfo>? children})
      : super(
          UAWRoute.name,
          initialChildren: children,
        );

  static const String name = 'UAWRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i12.UUCPPage]
class UUCPRoute extends _i14.PageRouteInfo<void> {
  const UUCPRoute({List<_i14.PageRouteInfo>? children})
      : super(
          UUCPRoute.name,
          initialChildren: children,
        );

  static const String name = 'UUCPRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i13.ImportScreen]
class ImportRoute extends _i14.PageRouteInfo<void> {
  const ImportRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ImportRoute.name,
          initialChildren: children,
        );

  static const String name = 'ImportRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}
