import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_sib/app_drawer.dart';
import 'package:test_sib/app_navigation_bar.dart';
import 'package:test_sib/routes/app_router.gr.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
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
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  bottom: 16.0,
                ),
                child: AppNavigationBar(tabsRouter: tabsRouter),
              )
            ],
          ),
          drawer: const AppDrawer(),
        );
      },
    );
  }
}




