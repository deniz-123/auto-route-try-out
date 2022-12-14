// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    BodyRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const BodyPage(),
      );
    },
    InnerRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const InnerPage(),
      );
    },
    RouteA.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const PageA(),
      );
    },
    EmptyRouterRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    RouteC.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const PageC(),
      );
    },
    RouteB.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const PageB(),
      );
    },
    InnerRoute2.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const InnerPage2(),
      );
    },
    InnerRoute2Main.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const InnerPage2Main(),
      );
    },
    RouteX.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const PageX(),
      );
    },
    RouteY.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const PageY(),
      );
    },
    RouteZ.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const PageZ(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          BodyRoute.name,
          path: '/',
          children: [
            RouteConfig(
              RouteA.name,
              path: 'a',
              parent: BodyRoute.name,
            ),
            RouteConfig(
              EmptyRouterRoute.name,
              path: 'b',
              parent: BodyRoute.name,
              children: [
                RouteConfig(
                  RouteB.name,
                  path: '',
                  parent: EmptyRouterRoute.name,
                ),
                RouteConfig(
                  InnerRoute2.name,
                  path: 'inner2',
                  parent: EmptyRouterRoute.name,
                  children: [
                    RouteConfig(
                      InnerRoute2Main.name,
                      path: '',
                      parent: InnerRoute2.name,
                    ),
                    RouteConfig(
                      RouteX.name,
                      path: 'x',
                      parent: InnerRoute2.name,
                    ),
                    RouteConfig(
                      RouteY.name,
                      path: 'y',
                      parent: InnerRoute2.name,
                    ),
                    RouteConfig(
                      RouteZ.name,
                      path: 'z',
                      parent: InnerRoute2.name,
                    ),
                  ],
                ),
              ],
            ),
            RouteConfig(
              RouteC.name,
              path: 'c',
              parent: BodyRoute.name,
            ),
          ],
        ),
        RouteConfig(
          InnerRoute.name,
          path: '/inner',
        ),
      ];
}

/// generated route for
/// [BodyPage]
class BodyRoute extends PageRouteInfo<void> {
  const BodyRoute({List<PageRouteInfo>? children})
      : super(
          BodyRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'BodyRoute';
}

/// generated route for
/// [InnerPage]
class InnerRoute extends PageRouteInfo<void> {
  const InnerRoute()
      : super(
          InnerRoute.name,
          path: '/inner',
        );

  static const String name = 'InnerRoute';
}

/// generated route for
/// [PageA]
class RouteA extends PageRouteInfo<void> {
  const RouteA()
      : super(
          RouteA.name,
          path: 'a',
        );

  static const String name = 'RouteA';
}

/// generated route for
/// [EmptyRouterPage]
class EmptyRouterRoute extends PageRouteInfo<void> {
  const EmptyRouterRoute({List<PageRouteInfo>? children})
      : super(
          EmptyRouterRoute.name,
          path: 'b',
          initialChildren: children,
        );

  static const String name = 'EmptyRouterRoute';
}

/// generated route for
/// [PageC]
class RouteC extends PageRouteInfo<void> {
  const RouteC()
      : super(
          RouteC.name,
          path: 'c',
        );

  static const String name = 'RouteC';
}

/// generated route for
/// [PageB]
class RouteB extends PageRouteInfo<void> {
  const RouteB()
      : super(
          RouteB.name,
          path: '',
        );

  static const String name = 'RouteB';
}

/// generated route for
/// [InnerPage2]
class InnerRoute2 extends PageRouteInfo<void> {
  const InnerRoute2({List<PageRouteInfo>? children})
      : super(
          InnerRoute2.name,
          path: 'inner2',
          initialChildren: children,
        );

  static const String name = 'InnerRoute2';
}

/// generated route for
/// [InnerPage2Main]
class InnerRoute2Main extends PageRouteInfo<void> {
  const InnerRoute2Main()
      : super(
          InnerRoute2Main.name,
          path: '',
        );

  static const String name = 'InnerRoute2Main';
}

/// generated route for
/// [PageX]
class RouteX extends PageRouteInfo<void> {
  const RouteX()
      : super(
          RouteX.name,
          path: 'x',
        );

  static const String name = 'RouteX';
}

/// generated route for
/// [PageY]
class RouteY extends PageRouteInfo<void> {
  const RouteY()
      : super(
          RouteY.name,
          path: 'y',
        );

  static const String name = 'RouteY';
}

/// generated route for
/// [PageZ]
class RouteZ extends PageRouteInfo<void> {
  const RouteZ()
      : super(
          RouteZ.name,
          path: 'z',
        );

  static const String name = 'RouteZ';
}
