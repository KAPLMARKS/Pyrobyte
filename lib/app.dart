import 'package:flutter/material.dart';
import 'package:pyrobyte/atm/atm_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pyrobyte',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF1F1F9),
          iconTheme: IconThemeData(
            color: Color(0xFF333333),
          ),
        ),
        scaffoldBackgroundColor: const Color(0xFFF1F1F9),
        primaryColor: const Color(0xFF333333),
        useMaterial3: true,
      ),
      home: const Atm(),
    );
  }
}
