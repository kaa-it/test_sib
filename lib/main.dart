import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_sib/routes/app_router.gr.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
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
                child: Row(
                  children: [
                    if (tabsRouter.activeIndex != 0)
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(110, 36)),
                        onPressed: () {
                          tabsRouter.setActiveIndex(tabsRouter.activeIndex - 1);
                        },
                        child: const Text("Назад"),
                      ),
                    Expanded(
                      child: Container(),
                    ),
                    if (tabsRouter.activeIndex != tabsRouter.pageCount - 1)
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(110, 36)),
                        onPressed: () {
                          tabsRouter.setActiveIndex(tabsRouter.activeIndex + 1);
                        },
                        child: const Text("Пропустить"),
                      ),
                  ],
                ),
              )
            ],
          ),
          drawer: Drawer(
              child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              ListTile(
                  leading: Icon(Icons.image), title: Text('Показать отчёт')),
              ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Выйти без сохранения')),
              Divider(
                height: 15.0,
                color: Colors.grey,
              ),
              ListTile(
                  leading: Icon(Icons.touch_app),
                  title: Text('Сенсорный экран')),
              ListTile(leading: Icon(Icons.usb), title: Text('USB')),
              ListTile(
                  leading: Icon(Icons.bug_report),
                  title: Text('Результаты текущего тестирования')),
            ],
          )),
        );
      },
    );
  }
}
