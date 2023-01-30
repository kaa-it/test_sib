// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../main.dart' as _i1;
import '../pages/first_page.dart' as _i2;
import '../pages/second_page.dart' as _i3;
import '../pages/third_page.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MyHomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MyHomePage(),
      );
    },
    FirstRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.FirstPage(),
      );
    },
    SecondRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SecondPage(),
      );
    },
    ThirdRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ThirdPage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          MyHomeRoute.name,
          path: '/',
          children: [
            _i5.RouteConfig(
              FirstRoute.name,
              path: 'first',
              parent: MyHomeRoute.name,
            ),
            _i5.RouteConfig(
              SecondRoute.name,
              path: 'second',
              parent: MyHomeRoute.name,
            ),
            _i5.RouteConfig(
              ThirdRoute.name,
              path: 'third',
              parent: MyHomeRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.MyHomePage]
class MyHomeRoute extends _i5.PageRouteInfo<void> {
  const MyHomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MyHomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MyHomeRoute';
}

/// generated route for
/// [_i2.FirstPage]
class FirstRoute extends _i5.PageRouteInfo<void> {
  const FirstRoute()
      : super(
          FirstRoute.name,
          path: 'first',
        );

  static const String name = 'FirstRoute';
}

/// generated route for
/// [_i3.SecondPage]
class SecondRoute extends _i5.PageRouteInfo<void> {
  const SecondRoute()
      : super(
          SecondRoute.name,
          path: 'second',
        );

  static const String name = 'SecondRoute';
}

/// generated route for
/// [_i4.ThirdPage]
class ThirdRoute extends _i5.PageRouteInfo<void> {
  const ThirdRoute()
      : super(
          ThirdRoute.name,
          path: 'third',
        );

  static const String name = 'ThirdRoute';
}
