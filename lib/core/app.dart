import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';

import '../Screens/screens/home_page.dart';
import '../Screens/screens/login_page.dart';
import '../Screens/screens/settings_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return VRouter(
      debugShowCheckedModeBanner: false, // VRouter acts as a MaterialApp
      mode: VRouterMode.history, // Remove the '#' from the url
      // logs: [VLogLevel.info], // Defines which logs to show, info is the default
      routes: [
        VWidget(
          path: '/',
          widget: const HomePage(),
        ),
        VWidget(
          path: '/login',
          widget: const LoginPage(),
        ),
        VWidget(
          path: '/login',
          widget: const SettingPage(),
        ),
      ],
    );
  }
}
