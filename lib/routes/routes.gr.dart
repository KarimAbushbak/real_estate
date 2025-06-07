// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:real_estate/features/auth/presntation/screens/option_screen.dart'
    as _i2;
import 'package:real_estate/features/on_boarding/presntation/screens/on_boarding_screen.dart'
    as _i1;
import 'package:real_estate/features/splash/presntation/screens/splash_screen.dart'
    as _i3;

/// generated route for
/// [_i1.OnBoardingScreen]
class OnBoardingRoute extends _i4.PageRouteInfo<OnBoardingRouteArgs> {
  OnBoardingRoute({_i5.Key? key, List<_i4.PageRouteInfo>? children})
    : super(
        OnBoardingRoute.name,
        args: OnBoardingRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'OnBoardingRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnBoardingRouteArgs>(
        orElse: () => const OnBoardingRouteArgs(),
      );
      return _i1.OnBoardingScreen(key: args.key);
    },
  );
}

class OnBoardingRouteArgs {
  const OnBoardingRouteArgs({this.key});

  final _i5.Key? key;

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
/// [_i2.OptionScreen]
class OptionRoute extends _i4.PageRouteInfo<void> {
  const OptionRoute({List<_i4.PageRouteInfo>? children})
    : super(OptionRoute.name, initialChildren: children);

  static const String name = 'OptionRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return  _i2.OptionScreen();
    },
  );
}

/// generated route for
/// [_i3.SplashScreen]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute({List<_i4.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.SplashScreen();
    },
  );
}
