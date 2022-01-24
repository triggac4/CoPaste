import 'package:co_paste/pages/create_server_page.dart';
import 'package:flutter/material.dart';

import './utils/theme_data.dart';
import './pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: bright,
      darkTheme: dark,
      themeMode: ThemeMode.system,
      routes: {"/": (context) => const HomePage()},
      onGenerateRoute: (setting) {
        if (setting.name == CreateServer.routeName) {
          int value = setting.arguments as int;
          return MaterialPageRoute(
              builder: (ctx) => CreateServer(
                    ip: value,
                  ));
        }
      },
    );
  }
}
