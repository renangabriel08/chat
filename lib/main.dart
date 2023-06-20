import 'package:chat/pages/home.dart';
import 'package:chat/pages/get_started.dart';
import 'package:chat/pages/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/started': (context) => const GetStarted(),
        '/home': (context) => const Home(),
        '/': (context) => const Splash(),
      },
      initialRoute: '/',
    );
  }
}
