import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          ListTile(leading: Icon(Icons.image), title: Text('Показать отчёт')),
          ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Выйти без сохранения')),
          Divider(
            height: 15.0,
            color: Colors.grey,
          ),
          ListTile(
              leading: Icon(Icons.touch_app), title: Text('Сенсорный экран')),
          ListTile(leading: Icon(Icons.usb), title: Text('USB')),
          ListTile(
              leading: Icon(Icons.bug_report),
              title: Text('Результаты текущего тестирования')),
        ],
      ),
    );
  }
}