import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_sib/routes/app_router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      homeIndex: 0,
      routes: const [
        FirstRoute(),
        SecondRoute(),
        ThirdRoute(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: Column(
            children: [
              Expanded(
                child: FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    if (tabsRouter.activeIndex != 0)
                      ElevatedButton(
                        onPressed: () {
                          tabsRouter.setActiveIndex(tabsRouter.activeIndex - 1);
                        },
                        child: const Text("Prev"),
                      ),
                    Expanded(child: Container(),),
                    if (tabsRouter.activeIndex != tabsRouter.pageCount - 1)
                      ElevatedButton(
                        onPressed: () {
                          tabsRouter.setActiveIndex(tabsRouter.activeIndex + 1);
                        },
                        child: const Text("Next"),
                      ),

                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
