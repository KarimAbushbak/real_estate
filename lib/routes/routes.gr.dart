// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:real_estate/features/auth/presntation/screens/login_screen.dart'
    as _i1;
import 'package:real_estate/features/auth/presntation/screens/option_screen.dart'
    as _i3;
import 'package:real_estate/features/on_boarding/presntation/screens/on_boarding_screen.dart'
    as _i2;
import 'package:real_estate/features/splash/presntation/screens/splash_screen.dart'
    as _i4;

/// generated route for
/// [_i1.LoginScreen]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute({List<_i5.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.LoginScreen();
    },
  );
}

/// generated route for
/// [_i2.OnBoardingScreen]
class OnBoardingRoute extends _i5.PageRouteInfo<OnBoardingRouteArgs> {
  OnBoardingRoute({_i6.Key? key, List<_i5.PageRouteInfo>? children})
    : super(
        OnBoardingRoute.name,
        args: OnBoardingRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'OnBoardingRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnBoardingRouteArgs>(
        orElse: () => const OnBoardingRouteArgs(),
      );
      return _i2.OnBoardingScreen(key: args.key);
    },
  );
}

class OnBoardingRouteArgs {
  const OnBoardingRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'OnBoardingRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OnBoardingRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i3.OptionScreen]
class OptionRoute extends _i5.PageRouteInfo<OptionRouteArgs> {
  OptionRoute({_i6.Key? key, List<_i5.PageRouteInfo>? children})
    : super(
        OptionRoute.name,
        args: OptionRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'OptionRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OptionRouteArgs>(
        orElse: () => const OptionRouteArgs(),
      );
      return _i3.OptionScreen(key: args.key);
    },
  );
}

class OptionRouteArgs {
  const OptionRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'OptionRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OptionRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i4.SplashScreen]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute({List<_i5.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.SplashScreen();
    },
  );
}
