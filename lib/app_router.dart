import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:auto_route_deneme/main.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';      
        
@MaterialAutoRouter(              
  replaceInRouteName: 'Page,Route',              
  routes: <AutoRoute>[    
    
    AutoRoute(
      path: "/",
      page: BodyPage,
      children: [
        AutoRoute(
      path: "a",
      page: PageA,
      children: [
      ]
    ),
    AutoRoute(
      path: "b",
      page: EmptyRouterPage,
      children: [
        AutoRoute(
      path: "",
      page: PageB
    )  ,
        AutoRoute(
      path: "inner2",
      page: InnerPage2,
      children: [
        AutoRoute(
      path: "",
      page: InnerPage2Main,
      initial: true
    ),
        AutoRoute(
      path: "x",
      page: PageX
    ) ,
    AutoRoute(
      path: "y",
      page: PageY
    ),
     AutoRoute(
      path: "z",
      page: PageZ
    ),
      ]
    )  
      ]
    ),
    AutoRoute(
      path: "c",
      page: PageC
    ),
      ]
    ),  
    AutoRoute(
      path: "/inner",
      page: InnerPage
    )          
  ],              
)              
// extend the generated private router        
class AppRouter extends _$AppRouter{}