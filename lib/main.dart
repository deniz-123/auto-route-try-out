import 'package:auto_route/auto_route.dart';
import 'package:auto_route_deneme/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      routerDelegate: _appRouter.delegate(),      
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

class BodyPage extends StatelessWidget {
  const BodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        RouteA(),
        EmptyRouterRoute(),
        RouteC()
      ],
      bottomNavigationBuilder: ((context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const  [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.bolt),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.hearing),label: "")
          ],
        );
      }),
    );
  }
}

class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CupertinoButton(child: const Text("a"), onPressed: () => context.router.pushNamed("/inner"))
        ],
      ),
    );
  }
}

class InnerPage extends StatelessWidget {
  const InnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CupertinoButton(child:const Text("inner"), onPressed: () {})
        ],
      ),
    );
  }
}

class InnerPage2 extends StatelessWidget {
  const InnerPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter(
      builder: (context,content) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("inner 2"),
            leading: AutoLeadingButton(),
          ),
          body: content
          
        );
      }
    );
  }
}

class InnerPage2Main extends StatelessWidget {
  const InnerPage2Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).padding.top,),
                      ListTile(
                        title: Text("x"),
                        onTap: () async {
                          print("in");
                          await context.router.pushNamed("x");
                           print("out");
                        },
                      ),
                      ListTile(
                        title: Text("y"),
                        onTap: () {
                          context.router.pushNamed("y");
                        },
                      ),
                      ListTile(
                        title: Text("z"),
                        onTap: () {
                          context.router.pushNamed("z");
                        },
                      ),
                    ],
                  );
  }
}

class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CupertinoButton(child: const Text("b"), onPressed: () => context.router.push(InnerRoute2()))
            ],
          );
        }
      ),
    );
  }
}

class PageC extends StatelessWidget {
  const PageC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("c")
        ],
      ),
    );
  }
}

class PageX extends StatelessWidget {
  const PageX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("x")
        ],
      ),
    );
  }
}

class PageY extends StatelessWidget {
  const PageY({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("y")
        ],
      ),
    );
  }
}

class PageZ extends StatelessWidget {
  const PageZ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("z")
        ],
      ),
    );
  }
}

