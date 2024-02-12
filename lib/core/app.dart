import 'package:flutter/material.dart';

import '../Screens/screens/homepage.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(title: 'ARASH'),
    );
  }
}
