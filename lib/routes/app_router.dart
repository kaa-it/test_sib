import 'package:auto_route/annotations.dart';
import 'package:test_sib/main.dart';
import 'package:test_sib/pages/first_page.dart';
import 'package:test_sib/pages/second_page.dart';
import 'package:test_sib/pages/third_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(
        page: MyHomePage,
        initial: true,
      children: [
        MaterialRoute(page: FirstPage, path: 'first'),
        MaterialRoute(page: SecondPage, path: 'second'),
        MaterialRoute(page: ThirdPage, path: 'third'),
      ]
    ),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}