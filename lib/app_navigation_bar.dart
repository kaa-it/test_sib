import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({
    Key? key,
    required this.tabsRouter,
  }) : super(key: key);

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}